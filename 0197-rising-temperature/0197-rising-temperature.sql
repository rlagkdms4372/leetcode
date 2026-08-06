WITH lag_tbl AS (
    SELECT *,
        LAG(temperature) OVER (ORDER BY recordDate) AS lag_temp,
        LAG(recordDate) OVER (ORDER BY recordDate) AS lag_date       
    FROM Weather
)

SELECT id
FROM lag_tbl
WHERE temperature > lag_temp
  AND DATEDIFF(recordDate, lag_date) = 1
