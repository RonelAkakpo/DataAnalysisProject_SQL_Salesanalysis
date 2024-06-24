--cleansed dim.product--
SELECT 
  p.ProductKey, 
  p.[ProductAlternateKey] as ProductItemCode, 
  --[ProductSubcategoryKey]
  --[WeightUnitMeasureCode]
  --[SizeUnitMeasureCode]
  p.[EnglishProductName] as ProductName, --[SpanishProductName]
  --[FrenchProductName]
  --[StandardCost]
  --[FinishedGoodsFlag]
  p.[Color] as ProductColor, 
  --[SafetyStockLevel]
  --[ReorderPoint]
  --[ListPrice]
  p.[Size] as ProductSize, 
  --[SizeRange]
  --[Weight]
  --[DaysToManufacture]
  p.[ProductLine] as ProductLine, 
  --[DealerPrice]
  --[Class]
  --[Style]
  p.[ModelName] as ProductModelName, 
  --[LargePhoto]
  p.[EnglishDescription] as ProductDescription, 
  --[FrenchDescription]
  --[ChineseDescription]
  --[ArabicDescription]
  --[HebrewDescription]
  --[ThaiDescription]
  --[GermanDescription]
  --[JapaneseDescription]
  --[TurkishDescription]
  --[StartDate]
  --[EndDate]
  ps.EnglishProductSubcategoryName as SubCategory, 
  pc.EnglishProductCategoryName as ProductCategory, 
  ISNULL (p.Status, 'Outdated') as ProductStatus --permet d'afficher la valeur outdated si status est null
FROM [dbo].[DimProduct] as p 
  LEFT JOIN [dbo].[DimProductSubcategory] as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [dbo].[DimProductCategory] as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey

