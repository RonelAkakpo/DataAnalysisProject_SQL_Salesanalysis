--Cleaned fact_InternetSales--
SELECT 
 [ProductKey],
 [OrderDateKey],
 [DueDateKey],
 [ShipDateKey],
 [CustomerKey],
      --[PromotionKey]
      --[CurrencyKey]
      --[SalesTerritoryKey]
      [SalesOrderNumber],
      --[SalesOrderLineNumber]
      --[RevisionNumber]
      --[OrderQuantity]
      --[UnitPrice]
      --[ExtendedAmount]
      --[UnitPriceDiscountPct]
      --[DiscountAmount]
      --[ProductStandardCost]
      --[TotalProductCost]
      [SalesAmount]
      --[TaxAmt]
      --[Freight]
      --[CarrierTrackingNumber]
      --[CustomerPONumber]
      --[OrderDate]
      --[DueDate]
      --[ShipDate]
  FROM 
  [dbo].[FactInternetSales]
  where 
  left (OrderDateKey, 4) >= year(getdate()) - 2  -- permet deffectuer l'operation date actuelle -2 et d'afficher la periode sur les deux ans 
  order by 
  OrderDateKey