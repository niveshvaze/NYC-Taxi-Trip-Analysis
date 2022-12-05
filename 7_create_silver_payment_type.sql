USE nyc_taxi_ldw;

IF OBJECT_ID('silver.payment_type') IS NOT NULL
DROP EXTERNAL TABLE silver.payment_type

CREATE EXTERNAL TABLE silver.payment_type
WITH
(
    DATA_SOURCE = nyc_taxi_src,
    LOCATION = 'silver/payment_type',
    FILE_FORMAT = parquet_file_format
)
AS
SELECT * FROM bronze.vw_payment_type;

SELECT * FROM silver.payment_type;