--crear base de datos
CREATE DATABASE CarDW;

USE CarDW;
GO

--Crear los esquemas

CREATE SCHEMA stg;
go

CREATE SCHEMA ods;
go

CREATE SCHEMA dw;
go 

--Tabla para el staging
CREATE TABLE stg.car_prices (
    year VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    trim VARCHAR(255),
    body VARCHAR(255),
    transmission VARCHAR(255),
    vin VARCHAR(255),
    state VARCHAR(255),
    condition VARCHAR(255),
    odometer VARCHAR(255),
    color VARCHAR(255),
    interior VARCHAR(255),
    seller VARCHAR(255),
    mmr VARCHAR(255),
    sellingprice VARCHAR(255),
    saledate VARCHAR(255)
);

--verificamos los datos
SELECT *
FROM stg.car_prices

--Verificar la creación
SELECT
    TABLE_SCHEMA    AS esquema,
    TABLE_NAME      AS tabla
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA IN ('stg', 'ods', 'dw')
ORDER BY TABLE_SCHEMA, TABLE_NAME;
GO
