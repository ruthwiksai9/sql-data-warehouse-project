/* 
==============================================================
Create DataBase and Schemas
==============================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreate. Additionally, the script set up three schemas with in database: 'bronze', 'silver', 'gold'.

Warning:
  Running this script will drop the entire 'Datawarehouse' database if it exists. All data in the database will be permenantly deleted. 
  Proceed with caution and ensure you have proper backup before running the script.
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
