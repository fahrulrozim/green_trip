{{
  config(
    materialized='view'
  )
}}

WITH src_green_taxi_trip_data_aug AS (
    SELECT
        *
    FROM
        {{ ref('src_trip_data_aug') }}
)
SELECT
    vendor_id,
    pickup_datetime,
    dropoff_datetime,
    store_and_fwd_flag,
    ratecode_id,
    pu_location_id,
    do_location_id,
    passenger_count,
    trip_distance,
    payment_type,	
    trip_type
FROM
    src_green_taxi_trip_data_aug
WHERE 
    trip_distance > 0