--usar la base de datos
USE CarDW
go 

--crear un store procedure
CREATE PROCEDURE stg.proc_CleanStageTable AS
------------------------------------
-- Author: Laura Navil
-- Create date: 2026-05-07
-- Database: CarDW
-- Description: Clean uo of stage tables
------------------------------------
-- Date        Author    Description
-----          -------   ------------
-- 2026-05-08    HB       Add time tables
-- ----------    --       ---------------
BEGIN
	TRUNCATE TABLE stg.car_prices
END

exec sys.sp_helptext 'stg.proc_CleanStageTable'