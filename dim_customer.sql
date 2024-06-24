--cleansed dim.Customer --
SELECT 
  c.[CustomerKey] as CustomeyKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.[FirstName] as FirstName, 
  --[MiddleName]
  c.[LastName] as LastName, 
  c.[FirstName] + '  ' + [LastName] as FullName, --permet de composer le nom et le prenom dans l'affichage
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
CASE c.Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren]
  --[NumberChildrenAtHome]
  --[EnglishEducation]
  --[SpanishEducation]
  --[FrenchEducation]
  --[EnglishOccupation]
  --[SpanishOccupation]
  --[FrenchOccupation]
  --[HouseOwnerFlag]
  --[NumberCarsOwned]
  --[AddressLine1]
  --[AddressLine2]
  --[Phone]
  c.[DateFirstPurchase] as DatefirstPurchase, 
  --[CommuteDistance]
  g.City as CustomerCity --colonne de la table geography pour la jointure
FROM 
  [dbo].[DimCustomer] as c 
  LEFT JOIN dbo.DimGeography as g on (g.GeographyKey = c.GeographyKey) 
order by 
  CustomeyKey 