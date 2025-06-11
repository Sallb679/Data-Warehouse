/*
=============================================================
Initialize DataWarehouse Database and Schemas
-------------------------------------------------------------
Creates the 'DataWarehouse' database if it doesn't exist, 
and sets up the 'bronze', 'silver', and 'gold' schemas 
if they are not already present.
=============================================================
*/
USE master;

IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
END
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
