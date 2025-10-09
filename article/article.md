# **Tiny Giants: Benchmarking Postgres, MySQL, ClickHouse & DuckDB under resource constraints**

**Authors:** Teddy Bernays, Pieter Geelen

**Audience:** Data Engineers, Analytics Engineers, Database Architects

**Last updated:** 2025-10-09

**Code & Benchmark repo:** *[Database crash test](https://github.com/Kuurkuma/database_crash_test)*

## 🔧 Benchmark Scope and Setup

### Objective
_The modern data stack is dominated by massive, distributed systems like **Snowflake and BigQuery**. 
But what happens when your data isn't petabyte-scale?_ 

_For the vast majority of use cases (running analytics on a developer's laptop, in a serverless function, or on an edge device) deploying a distributed cluster is costly overkill. 
This benchmark tests a new breed of tiny giant: DuckDB and compare it with more established RDMS. We observe the analytical power of those databases reflecting the reality of actual companies use cases._

That's why we tested how four SQL databases perform under constrained environments, simulating real-world conditions like edge deployments, developer laptops, and small cloud instances.

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

* Size: 1.36GB - 39 columns - 900,000 rows
* Columns:
[See Dataset here](https://www.kaggle.com/datasets/devdope/900k-spotify/data)



## 📋 Query Workload Overview

**Query categories:**

1. Selects
2. Aggregatesd
3. Joins
4. Window Functions

| Query Type           | Description                            | SQL File / Label     |
| -------------------- | -------------------------------------- | -------------------- |
| Basic Select         | `SELECT * FROM data LIMIT 100;`        | 
| Count Rows           | `SELECT COUNT(*) FROM data;`           |                      |
| Distinct & Group By  | `SELECT DISTINCT...GROUP BY genre`     |                      |
| Basic Aggregates     | `AVG, SUM, MAX, MIN`                   |                      |
| Filter by string     | `WHERE text LIKE %%love%%'`            |                      |
| Self Join            | check for duplicate artists            |                      |
| Window Running Total | ``                                     |                      |
| Lag-Based Join       | ``                                     |                      |

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
* Expected to be fast across all engines.
* Use for warm-up or table scan benchmark.

> *Insert chart or result table here.*
> *Observations: e.g., DuckDB consistently fastest, MySQL slight overhead due to server architecture.*



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

* ``

> *Highlight performance of Postgres and DuckDB*

#### Lag-Based Delta Join

* ``

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

### 🧩 Architectural Trade-offs

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

* Add SQL lite database to the benchmark.
* Add benchmarks on SSD vs RAMdisk.
* Profile disk I/O bottlenecks.
* Run on ARM64 and Apple Silicon.
* Compare performance using Parquet or CSV as external storage.


## 📁 Resources

* [DuckDB](https://duckdb.org)
* [ClickHouse](https://clickhouse.com)
* [PostgreSQL](https://www.postgresql.org)
* [MySQL](https://www.mysql.com)
* [Repo with Queries + Docker Setup](https://github.com/Kuurkuma/database_crash_test)
