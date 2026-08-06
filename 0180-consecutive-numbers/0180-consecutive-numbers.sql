# Write your MySQL query statement below
WITH lag_tbl AS (
    SELECT *,
        LAG(num, 1) OVER (ORDER BY id) AS lag_1,
        LAG(num, 2) OVER (ORDER BY id) AS lag_2
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM lag_tbl
WHERE num = lag_1 AND lag_1 =  lag_2
