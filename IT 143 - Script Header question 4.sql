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

-- Q1: Using the Sales.Store table, could you please tell me where each store is located? Use the Person.BusinessEntityAddress to link the data.
-- A2: By means of a RIGHT JOIN and linking 3 different tables we can find out which are the cities of each store as shown below

SELECT GETDATE() AS my_date;

SELECT s.BusinessEntityID, s.Name, p.AddressID, a.City

FROM [Sales].[Store] AS s RIGHT JOIN [Person].[BusinessEntityAddress] AS p ON ( s.BusinessEntityID = p.BusinessEntityID)
RIGHT JOIN [Person].[Address] AS a ON ( p.AddressID = a.AddressID)

ORDER BY 2 DESC;