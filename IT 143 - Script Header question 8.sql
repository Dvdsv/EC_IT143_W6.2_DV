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
Since the question is about "where are the variables?" I preferred to print them to "answer that question", in addition to the formal answer that would talk about the location of the variables

******************************************************************************************************************/

-- Q1: I am requestion information on the location of the Territory ID and Sales YTD data within the sales module can you show me where that is in the in AdventureWorks Database?
-- A2: Yes. These variables can be found inside the table [Sales].[SalesTerritory], I printed only the variables provided for a better view

SELECT GETDATE() AS my_date;

SELECT s.TerritoryID, s.SalesYTD
FROM [Sales].[SalesTerritory] AS s