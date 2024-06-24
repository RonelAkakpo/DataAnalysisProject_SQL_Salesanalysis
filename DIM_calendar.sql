--cleansed dim_datetable--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date,
  --,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] as Day,  
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear] 
  [WeekNumberOfYear] as WeekNr, 
  [EnglishMonthName] as Month,
  LEFT([EnglishMonthName],3) as Monthshort, --pour diminuer les caracteres à 3 lettres
  --,[SpanishMonthName]
  --,[FrenchMonthName], 
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
where CalendarYear >=2013