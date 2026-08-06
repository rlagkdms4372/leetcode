# Write your MySQL query statement below
WITH activity_rank AS (
    SELECT *,
           RANK() OVER (PARTITION BY player_id ORDER BY event_date ASC) AS RK
    FROM Activity
)

SELECT player_id, event_date AS first_login
FROM activity_rank
WHERE RK = 1