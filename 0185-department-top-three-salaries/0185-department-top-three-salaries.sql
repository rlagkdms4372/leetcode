# Write your MySQL query statement below
WITH rk_join AS (
    SELECT E.name AS Employee,
        E.salary AS Salary,
        D.name AS Department,
        DENSE_RANK() OVER (PARTITION BY D.name ORDER BY E.salary DESC) AS rk
    FROM Employee AS E
        INNER JOIN Department AS D
        ON E.departmentID = D.id
)

SELECT Department, Employee, Salary
FROM rk_join
WHERE rk <= 3