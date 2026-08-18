CREATE TABLE [retail].[DimCustomer] (

	[CustomerKey] bigint IDENTITY NOT NULL, 
	[CustomerID] varchar(20) NOT NULL, 
	[CustomerName] varchar(200) NOT NULL, 
	[Email] varchar(200) NULL, 
	[Phone] varchar(50) NULL, 
	[AddressLine1] varchar(200) NULL, 
	[City] varchar(100) NULL, 
	[StateProvince] varchar(100) NULL, 
	[PostalCode] varchar(20) NULL, 
	[Country] varchar(100) NULL, 
	[CustomerSegment] varchar(50) NULL, 
	[EffectiveDate] date NOT NULL, 
	[ExpirationDate] date NULL, 
	[IsCurrent] bit NOT NULL
);


GO
ALTER TABLE [retail].[DimCustomer] ADD CONSTRAINT PK_DimCustomer primary key NONCLUSTERED ([CustomerKey]);