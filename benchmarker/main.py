import logging
import sys
import os
from bench.databases import (
    MySQLHandler,
    PostgresHandler,
    ClickHouseHandler,
    DuckDBHandler,
)
from bench.bench import Benchmarker
from bench.query_parser import load_queries_split_by_semicolon
from itertools import product


logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
    stream=sys.stdout,
)

logger = logging.getLogger("main")


if __name__ == "__main__":
    benchmarker = Benchmarker()


    def dict_product(d):
        """Returns a list of dictionaries with all combinations of the input dict's values."""
        keys = d.keys()
        return [dict(zip(keys, values)) for values in product(*d.values())]


    scenarios_test = {
        "cpu": [10],
        "mem": ["32G"],
    }
    scenarios_full = {
        "cpu": [2, 4, 6,  8, 10, 14, 18],
        "mem": ["2G", "4G", "8G", "16G", "32G", "64G"],
    }

    tests = {}
    for setup in dict_product(scenarios_test):
        tests.update({
            f"mysql_cpu{setup['cpu']}_mem{setup['mem']}": MySQLHandler(name=f"test-mysql_cpu{setup['cpu']}_mem{setup['mem']}", cpu_limit=setup["cpu"], memory_limit=setup["mem"], port=3306, sql_dialect="mysql"),
            f"postgres_cpu{setup['cpu']}_mem{setup['mem']}": PostgresHandler(name=f"test-postgres_cpu{setup['cpu']}_mem{setup['mem']}", cpu_limit=setup["cpu"], memory_limit=setup["mem"], port=6543, sql_dialect="postgres"),
             f"duckdb_cpu{setup['cpu']}_mem{setup['mem']}": DuckDBHandler(
                 name=f"test-duckdb_cpu{setup['cpu']}_mem{setup['mem']}", cpu_limit=setup["cpu"], memory_limit=setup["mem"], db_file="duckdb_data.db", sql_dialect="duckdb"
             ),
             f"clickhouse_cpu{setup['cpu']}_mem{setup['mem']}": ClickHouseHandler(
                 name=f"test-clickhouse_cpu{setup['cpu']}_mem{setup['mem']}", cpu_limit=setup["cpu"], memory_limit=setup["mem"], http_port=8124, tcp_port=9001, sql_dialect="clickhouse"
             ),
        })

    print(tests)
    benchmarker.define_database_handlers(database_handlers=tests)

    # Load the iris dataset
    #benchmarker.get_data(
    #   url="https://gist.githubusercontent.com/netj/8836201/raw/6f9306ad21398ea43cba4f7d537619d0e07d5ae3/iris.csv"
    #   )
    
    # Construct a robust path to the SQL file, independent of the current working directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    sql_file_path = os.path.join(project_root, 'protocol_queries_2.0.sql')

    # Load the queries to be executed
    queries = load_queries_split_by_semicolon(sql_file_path)
    
    benchmarker.get_data_from_kaggle(handle="devdope/900k-spotify", path="spotify_dataset.csv")

    # Define the queries to be executed
    benchmarker.define_queries(queries=queries)

    # Run the benchmark
    results_df = benchmarker.benchmark_queries()

    # Save results to CSV
    benchmarker.save_metrics_to_csv("database_benchmark_results3.csv")
