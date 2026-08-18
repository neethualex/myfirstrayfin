CREATE TABLE [retail].[DimStore] (

	[StoreKey] bigint IDENTITY NOT NULL, 
	[StoreID] varchar(20) NOT NULL, 
	[StoreName] varchar(200) NOT NULL, 
	[StoreType] varchar(50) NULL, 
	[Region] varchar(100) NULL, 
	[StateProvince] varchar(100) NULL, 
	[City] varchar(100) NULL, 
	[PostalCode] varchar(20) NULL, 
	[Country] varchar(100) NULL, 
	[OpenDate] date NULL, 
	[StoreManager] varchar(200) NULL
);


GO
ALTER TABLE [retail].[DimStore] ADD CONSTRAINT PK_DimStore primary key NONCLUSTERED ([StoreKey]);