# Write your MySQL query statement below
-- WITH queries_avg AS (
--     SELECT query_name,
--            ROUND(AVG(rating/position), 2) AS quality_sum,
--            ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
--     FROM Queries
--     GROUP BY query_name
-- )
-- SELECT query_name,
--        ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
-- FROM Queries
       
SELECT query_name,
       ROUND(AVG(rating/position), 2) AS quality,
       ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name