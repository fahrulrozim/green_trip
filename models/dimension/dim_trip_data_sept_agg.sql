{{
  config(
    materialized='view'
  )
}}

WITH src_green_taxi_trip_data_sept AS (
    SELECT
        *
    FROM
        {{ ref('src_trip_data_sept') }}
)
SELECT
    vendor_id,
    pickup_datetime,
    dropoff_datetime,
    payment_type, 
    SUM(passenger_count) as num_of_passenger,
FROM
    src_green_taxi_trip_data_sept
GROUP BY
    vendor_id, pickup_datetime, dropoff_datetime, payment_type