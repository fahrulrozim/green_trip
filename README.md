# green_trip

This is a dbt project using Green Taxi Trip Data in 2021. Reference for the data can be seen here : [Green Taxi Trip Data 2021](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page)

Pre-requisite:
1. Google Cloud Platform:
  - Google Cloud Storage
  - Google BigQuery
2. dbt

How to run:
1. Get Google Cloud Credentials and create dataset based on [this link](https://cloud.google.com/bigquery/docs/datasets). This is the step to [Connect with BigQuery](https://docs.getdbt.com/guides/getting-started/getting-set-up/setting-up-bigquery).
2. Run with command `dbt run`.
3. If you want to test, run with command `dbt test`.
4. To get docs run with command `dbt docs generate`.
