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
The question is about the existence of the table and whether a foreign key variable exists in it. I think the best way to represent this answer was by printing only the global key variable of the table
 
******************************************************************************************************************/

-- Q1: Can you verify if the HumanResources.EmployeePayHistory has a foreign key reference?
-- A2: Yes, the BusinessEntityID column works as an external variable, which allows it to be connected to other tables in a simpler way.

SELECT GETDATE() AS my_date;

SELECT h.BusinessEntityID
FROM [HumanResources].[EmployeePayHistory] AS h