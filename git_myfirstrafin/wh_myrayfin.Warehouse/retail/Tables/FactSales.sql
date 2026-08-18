CREATE TABLE [retail].[FactSales] (

	[SalesKey] bigint IDENTITY NOT NULL, 
	[DateKey] int NOT NULL, 
	[CustomerKey] bigint NOT NULL, 
	[ProductKey] bigint NOT NULL, 
	[StoreKey] bigint NOT NULL, 
	[OrderNumber] varchar(30) NOT NULL, 
	[OrderLineNumber] int NOT NULL, 
	[Quantity] int NOT NULL, 
	[UnitPrice] decimal(12,2) NOT NULL, 
	[UnitCost] decimal(12,2) NOT NULL, 
	[DiscountAmount] decimal(12,2) NOT NULL, 
	[SalesAmount] decimal(14,2) NOT NULL, 
	[CostAmount] decimal(14,2) NOT NULL, 
	[ProfitAmount] decimal(14,2) NOT NULL, 
	[CreatedDateTime] datetime2(3) NOT NULL
);


GO
ALTER TABLE [retail].[FactSales] ADD CONSTRAINT PK_FactSales primary key NONCLUSTERED ([SalesKey]);
GO
ALTER TABLE [retail].[FactSales] ADD CONSTRAINT FK_FactSales_DimCustomer FOREIGN KEY ([CustomerKey]) REFERENCES [retail].[DimCustomer]([CustomerKey]);
GO
ALTER TABLE [retail].[FactSales] ADD CONSTRAINT FK_FactSales_DimDate FOREIGN KEY ([DateKey]) REFERENCES [retail].[DimDate]([DateKey]);
GO
ALTER TABLE [retail].[FactSales] ADD CONSTRAINT FK_FactSales_DimProduct FOREIGN KEY ([ProductKey]) REFERENCES [retail].[DimProduct]([ProductKey]);
GO
ALTER TABLE [retail].[FactSales] ADD CONSTRAINT FK_FactSales_DimStore FOREIGN KEY ([StoreKey]) REFERENCES [retail].[DimStore]([StoreKey]);