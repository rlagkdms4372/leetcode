# Write your MySQL query statement below
WITH with_max AS (
    SELECT id, 
       student,
       MAX(id) OVER () AS max_id
    FROM Seat
)
SELECT CASE 
           WHEN MOD(max_id, 2) = 1 AND id = max_id THEN id
           WHEN MOD(id, 2) = 1 THEN id + 1
           ELSE id-1
       END AS id,
       student
FROM with_max
ORDER BY id
