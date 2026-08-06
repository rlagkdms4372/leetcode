#Write a solution to find employees who have the highest salary in each of the departments.
-- SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary
-- FROM Employee AS E 
-- INNER JOIN Department AS D on E.departmentId = D.id
-- WHERE (E.salary, E.departmentID) IN (SELECT MAX(salary), departmentId 
--                                      FROM Employee
--                                      GROUP BY departmentId)

WITH join_tbl AS (
    SELECT E.name AS Employee,
           E.salary AS Salary, 
           D.name AS Department,
           RANK() OVER (PARTITION BY E.departmentID ORDER BY salary DESC) AS rk
    FROM Employee AS E
         INNER JOIN Department AS D
         ON E.departmentID = D.id
)

SELECT Department, Employee, Salary
FROM join_tbl
WHERE rk = 1
