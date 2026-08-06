# Write your MySQL query statement below
# find the names of all the salespersons who did not have any orders related to the company with the name "RED".
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (SELECT DISTINCT(od.sales_id) AS sales_id
                        FROM Orders AS od INNER JOIN Company AS cp ON od.com_id = cp.com_id
                        WHERE cp.name = "RED")
