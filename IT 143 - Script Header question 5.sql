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
There are several productIDs, but 566 is not in the product.product list
 
******************************************************************************************************************/

-- Q1: What is the product description for the product with ProductID 566
-- A2: None, because there is no product ID number 566

SELECT GETDATE() AS my_date;

SELECT o.ProductID, o.ProductModelID, p.ProductDescriptionID, o.Name, p.Description

FROM [Production].[ProductDescription] AS p RIGHT JOIN [Production].[ProductModelProductDescriptionCulture] AS r ON (p.ProductDescriptionID = r.ProductDescriptionID)
RIGHT JOIN [Production].[Product] AS o ON (o.ProductModelID = r.ProductModelID)
WHERE o.ProductID = 566

ORDER BY 4 DESC;