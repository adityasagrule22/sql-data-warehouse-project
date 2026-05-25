/*
===========================================
Create Database and Schemas
===========================================
Script Purpose:
    This script creates a new database named 'Datawarehouse' after checking if it already exists.
    If the database exsts, it is dropped and recreated. Additionally, the scriot sets up three schemas within the databse: 'bronze', 'silver', 'gold'.
*/
USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABSE Datawarehouse;
END;
GO

-- Create the 'Datawarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
