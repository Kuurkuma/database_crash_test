# **Tiny Giants: Benchmarking Postgres, MySQL, ClickHouse, and DuckDB Under Resource Constraints**

**Author:** \ Teddy Bernays, Pieter Geelen
**Audience:** Data Engineers, DB Architects
**Last updated:** \10-09-2025
**Code & Benchmark Repo:** *\[Database crash test](https://github.com/Kuurkuma/database_crash_test)*

## 🔧 Benchmark Scope and Setup

### Objective

Test how four SQL databases perform under constrained environments—simulating real-world conditions like edge deployments, developer laptops, and minimal cloud instances.

### Databases Evaluated

| Database   | Version Used | Notes                                                 |
| ---------- | ------------ | ----------------------------------------------------- |
| PostgreSQL | `x.y.z`      | Baseline RDBMS, well-optimized                        |
| MySQL      | `x.y.z`      | Lightweight and popular, but limited in OLAP features |
| ClickHouse | `x.y.z`      | High-performance columnar database                    |
| DuckDB     | `1.3.0`      | Embedded OLAP engine with modern architecture         |

### Test Matrix

```python
scenarios_full = {
    "cpu": [2, 4, 6, 8, 10, 14, 18],
    "mem": ["2G", "4G", "8G", "16G", "32G", "64G"],
}
```

### Dataset

This is the 900k songs spotify dataset available on Kaggle

* Size: \ 1.36GB - 39 columns - 900,000 rows
* Columns:
[See Dataset here](https://www.kaggle.com/datasets/devdope/900k-spotify/data)



## 📋 Query Workload Overview

**Query categories:**

1. Selects
2. Aggregates
3. Joins
4. Window Functions

| Query Type           | Description                            | SQL File / Label     |
| -------------------- | -------------------------------------- | -------------------- |
| Basic Select         | `SELECT * FROM data LIMIT 100;`        | `Q1_basic_select`    |
| Count Rows           | `SELECT COUNT(*) FROM data;`           | `Q2_count`           |
| Date Range Filter    | `WHERE time >= ...`                    | `Q3_date_filter`     |
| Filter + Threshold   | `AND power_output > 0;`                | `Q4_complex_filter`  |
| Top N by Metric      | `ORDER BY power_output DESC LIMIT 50;` | `Q5_order_by_limit`  |
| Basic Aggregates     | `AVG, MAX, MIN`                        | `Q6_aggregates`      |
| Aggregates by Date   | With range filters                     | `Q7_agg_date_filter` |
| Aggregates per Year  | Group by EXTRACT(YEAR FROM time)       | `Q8_grouped_yearly`  |
| Self Join            | Calculate power change                 | `Q9_self_join`       |
| Window Running Total | `SUM(...) OVER (ORDER BY time)`        | `Q10_window_sum`     |
| Lag-Based Join       | `LEFT JOIN MAX(time) < d1.time`        | `Q11_delta_window`   |

---

## 🧪 Benchmark Results

### ⚙️ System Performance Metrics

> *Insert CPU/RAM matrix with execution time per database and query. Include charts or Markdown tables here.*

### Execution time

| Database Type | Avg Execution Time (ms) | Median Execution Time (ms) | Min Execution Time (ms) | Max Execution Time (ms) | Total Execution Time |
| :--- | ---:| ---:| ---:| ---:| ---:|
| DuckDBHandler | 343.50 | 19.15 | 2.56 | 1,924.00 | 2,404.52 |
| PostgresHandler | 525.87 | 73.24 | 20.75 | 1,644.80 | 3,681.11 |
| ClickHouseHandler | 691.89 | 36.33 | 6.34 | 3,437.88 | 4,843.24 |
| MySQLHandler | 9,876.19 | 1,027.34 | 22.90 | 62,273.31 | 69,133.35 |



## 📊 Query Results by Category

### 1. **Select Queries**

#### Basic Select with LIMIT

* 📝 `SELECT * FROM data LIMIT 100;`
* ✔️ Expected to be fast across all engines.
* ✅ Use for warm-up or table scan benchmark.

> *Insert chart or result table here.*
> *Observations: e.g., DuckDB consistently fastest, MySQL slight overhead due to server architecture.*

#### Date Filtered Select

* `SELECT * FROM data WHERE time BETWEEN ...`
* Useful for partition pruning and index testing.

> *Result summary placeholder*

#### Top-N Ordering

* `ORDER BY power_output DESC LIMIT 50;`
* ClickHouse and DuckDB may dominate due to vectorized sorting.

> *Chart or numeric comparison here*

---

### 2. **Aggregate Queries**

#### Basic Aggregates

* `AVG, MIN, MAX` on `power_output`
* Great for columnar optimization.

> *Result table or chart*
> *Observations: ClickHouse excels at pure aggregates, but DuckDB holds its own under low RAM.*

#### Grouped by Year

* Yearly aggregates, grouped with EXTRACT.

> *Add result plot (bar chart or grouped latency)*


### 3. **Join Queries**

#### Self-Join for Power Delta

* `t1 JOIN t2 ON t1.time = t2.time`
* This stresses memory and join planner logic.

> *Result chart*
> *MySQL may perform poorly here due to less optimized join algorithm.*


### 4. **Window Functions**

#### Running Total

* `SUM(power_output) OVER (ORDER BY time)`

> *Highlight performance of Postgres and DuckDB*

#### Lag-Based Delta Join

* `LEFT JOIN` on previous timestamp

> *DuckDB's optimizer may surprise with performance here even without indexes.*


## 🧠 Takeaways and Reflections

### 🏁 Performance Summary

| Query Type       | Fastest DB      | Notes                    |
| ---------------- | --------------- | ------------------------ |
| Basic Select     | DuckDB          | Low overhead, in-process |
| COUNT(\*)        | ClickHouse      | Columnar advantage       |
| Window Functions | DuckDB/Postgres | Strong SQL engine        |
| Joins            | ClickHouse      | But with tuning          |
| Aggregates       | ClickHouse      | Raw power                |
| Embedded Use     | DuckDB          | No server needed         |

### 🧩 Architectural Tradeoffs

| DB         | Server Needed | Vectorized | OLAP Focus | Index Support | Embedded |
| ---------- | ------------- | ---------- | ---------- | ------------- | -------- |
| Postgres   | ✅             | ❌          | ⚠️ Mixed   | ✅             | ❌        |
| MySQL      | ✅             | ❌          | ❌          | ✅             | ❌        |
| ClickHouse | ✅             | ✅          | ✅          | ⚠️ Limited    | ❌        |
| DuckDB     | ❌             | ✅          | ✅          | ❌             | ✅        |


## 🚀 Why DuckDB is Changing the Game

DuckDB is not just fast—it reimagines the *scope* of databases:

* Runs *in-process* with your app, no servers required.
* Scales by launching **multiple engines on shared storage**, not by sharding or replicating.
* Great for **embedded analytics**, **data science notebooks**, and **serverless backends**.
* Removes orchestration complexity—ideal for edge computing, IoT, and developer tools.

> *“You don’t need a cluster to get serious speed.”*


## 📎 Next Steps

* Add benchmarks on SSD vs RAMdisk.
* Profile disk I/O bottlenecks.
* Run on ARM64 and Apple Silicon.
* Compare performance using Parquet or CSV as external storage.


## 📁 Resources

* [DuckDB](https://duckdb.org)
* [ClickHouse](https://clickhouse.com)
* [PostgreSQL](https://www.postgresql.org)
* [MySQL](https://www.mysql.com)
* \[Repo with Queries + Docker Setup] → *\[Insert Link]*
