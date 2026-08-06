# Write your MySQL query statement below
WITH year_rk AS (
    SELECT *,
           RANK() OVER (PARTITION BY product_id ORDER BY year) AS rk
    FROM Sales
)

SELECT product_id, year AS first_year, quantity, price
FROM year_rk
WHERE rk = 1