USE nyc_taxi_ldw;

IF OBJECT_ID('silver.calendar') IS NOT NULL
DROP EXTERNAL TABLE silver.calendar

CREATE EXTERNAL TABLE silver.calendar
WITH
(
    DATA_SOURCE = nyc_taxi_src,
    LOCATION = 'silver/calendar',
    FILE_FORMAT = parquet_file_format
)
AS
SELECT * FROM bronze.calendar;

SELECT * FROM silver.taxi_zone;

-- silver table for trip type

IF OBJECT_ID('silver.trip_type') IS NOT NULL
DROP EXTERNAL TABLE silver.trip_type

CREATE EXTERNAL TABLE silver.trip_type
WITH
(
    DATA_SOURCE = nyc_taxi_src,
    LOCATION = 'silver/trip_type',
    FILE_FORMAT = parquet_file_format
)
AS
SELECT * FROM bronze.trip_type;

SELECT * FROM silver.trip_type;