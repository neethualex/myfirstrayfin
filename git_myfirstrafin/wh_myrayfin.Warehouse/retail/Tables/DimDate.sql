CREATE TABLE [retail].[DimDate] (

	[DateKey] int NOT NULL, 
	[FullDate] date NOT NULL, 
	[DayOfMonth] smallint NOT NULL, 
	[DayName] varchar(10) NOT NULL, 
	[DayOfWeek] smallint NOT NULL, 
	[DayOfYear] smallint NOT NULL, 
	[WeekOfYear] smallint NOT NULL, 
	[MonthNumber] smallint NOT NULL, 
	[MonthName] varchar(10) NOT NULL, 
	[CalendarQuarter] smallint NOT NULL, 
	[CalendarYear] smallint NOT NULL, 
	[FiscalQuarter] smallint NULL, 
	[FiscalYear] smallint NULL, 
	[IsWeekend] bit NOT NULL, 
	[IsHoliday] bit NOT NULL
);


GO
ALTER TABLE [retail].[DimDate] ADD CONSTRAINT PK_DimDate primary key NONCLUSTERED ([DateKey]);