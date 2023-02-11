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
Thanks to the organization of the table, it is not necessary to make substantial modifications in the query
 
******************************************************************************************************************/

-- Q1: Business User question - Marginal complexity: What are our top 2 types of enterprise products referring to the Production.ProductCategory list?
-- A2: Australia Bike Retailer, Allenson Cycles and Advanced Bicycles

SELECT GETDATE() AS my_date;

SELECT TOP 2 p.Name
FROM [Production].[ProductCategory] AS p