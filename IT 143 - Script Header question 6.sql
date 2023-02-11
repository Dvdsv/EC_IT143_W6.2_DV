/*****************************************************************************************************************
NAME:    EC_IT143_W6.2_DV 
PURPOSE: Answer the questions asked by me or by the students by means of a script in SQL

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/11/2023   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
As shown in the code, we abuse the JOIN functions a bit to be able to connect the graphics little by little and thus be able to show all the results requested in the question
 
******************************************************************************************************************/

-- Q1: As a result of our growth in the company we are considering also expanding our reach to nations outside of the United State. We need the mailing address for all companies outside the US especially in a cities whose name starts with Pa. We need the 1st and 2nd Address line, city and postalcode, country region code.
-- A2: T2P 2G8, T5, V5A 4X1... These are some ZIP codes for cities outside of the United States. In addition to being able to also have the specific cities, the address lines 1 and 2, and the region code

SELECT GETDATE() AS my_date;

SELECT s.Name, p.CountryRegionCode, e.PostalCode, e.AddressLine1, e.AddressLine2, e.City
FROM [Sales].[Store] AS s LEFT JOIN [Person].[BusinessEntityAddress] AS b ON (s.BusinessEntityID = b.BusinessEntityID)
LEFT JOIN [Sales].[SalesOrderHeader] AS a ON (a.SalesPersonID= s.SalesPersonID)
LEFT JOIN [Person].[StateProvince] AS p ON (p.TerritoryID= a.TerritoryID)
LEFT JOIN [Person].[Address] as e ON (p.StateProvinceID= e.StateProvinceID)
WHERE p.CountryRegionCode <> 'US'