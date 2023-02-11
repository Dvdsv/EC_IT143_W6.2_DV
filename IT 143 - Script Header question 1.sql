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
It is not necessary to delete the date or make modifications thanks to the organization of the table.
 
******************************************************************************************************************/

-- Q1: Business User question - Marginal complexity: Who are our top 3 trusted purchasing vendors on the Pursharing.Vendor list in 2011?
-- A2: Australia Bike Retailer, Allenson Cycles and Advanced Bicycles

SELECT GETDATE() AS my_date;

SELECT TOP 3 p.Name,
			p.ModifiedDate
FROM [Purchasing].[Vendor] AS p