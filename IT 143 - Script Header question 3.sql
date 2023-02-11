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
Use a LEFT JOIN to connect the 2 lists so you can have the name of the person who made a certain amount of specific sales
 
******************************************************************************************************************/

-- Q1: List of salespeople established sales quota; commission percentage and bonus for the ten salespeople whose sales in the last year are the highest concerning the others. Can you get this information?
-- A2: Ranjit, Lynn, Shu, José, Jillian, Pamela, Tsvi, Michael, Jae, Garrett. These are the 10 workers who obtained the highest result in sales last year

SELECT GETDATE() AS my_date;

SELECT TOP 10 s.BusinessEntityID, p.FirstName, p.MiddleName, p.LastName, s.CommissionPct, s.Bonus, s.SalesLastYear

FROM [Sales].[SalesPerson] AS s LEFT JOIN [Person].[Person] AS p ON ( s.BusinessEntityID = p.BusinessEntityID)

ORDER BY 7 DESC;