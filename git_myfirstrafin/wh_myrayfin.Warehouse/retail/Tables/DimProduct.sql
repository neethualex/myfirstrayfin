CREATE TABLE [retail].[DimProduct] (

	[ProductKey] bigint IDENTITY NOT NULL, 
	[ProductID] varchar(20) NOT NULL, 
	[ProductName] varchar(200) NOT NULL, 
	[ProductCategory] varchar(100) NULL, 
	[ProductSubcategory] varchar(100) NULL, 
	[Brand] varchar(100) NULL, 
	[Color] varchar(50) NULL, 
	[Size] varchar(20) NULL, 
	[UnitCost] decimal(12,2) NULL, 
	[UnitPrice] decimal(12,2) NULL, 
	[EffectiveDate] date NOT NULL, 
	[ExpirationDate] date NULL, 
	[IsCurrent] bit NOT NULL
);


GO
ALTER TABLE [retail].[DimProduct] ADD CONSTRAINT PK_DimProduct primary key NONCLUSTERED ([ProductKey]);