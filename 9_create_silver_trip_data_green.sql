USE nyc_taxi_ldw;

/*

IF OBJECT_ID('silver.trip_data_green_csv') IS NOT NULL
DROP EXTERNAL TABLE silver.trip_data_green_csv

CREATE EXTERNAL TABLE silver.trip_data_green_csv
WITH
(
    DATA_SOURCE = nyc_taxi_src,
    LOCATION = 'silver/trip_data_green_csv',
    FILE_FORMAT = parquet_file_format
)
AS
SELECT * FROM bronze.trip_data_green_csv;

SELECT * FROM silver.trip_data_green_csv;

*/

EXEC silver.usp_silver_trip_data_green '2021', '01'
EXEC silver.usp_silver_trip_data_green '2021', '02'
EXEC silver.usp_silver_trip_data_green '2021', '03'
EXEC silver.usp_silver_trip_data_green '2021', '04'
EXEC silver.usp_silver_trip_data_green '2021', '05'
EXEC silver.usp_silver_trip_data_green '2021', '06'


