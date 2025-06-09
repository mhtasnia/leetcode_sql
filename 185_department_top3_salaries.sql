# Write your MySQL query statement below
SELECT Department, Employee, Salary
FROM
    (SELECT d.name as Department, e.name as Employee, e.salary as Salary,
    DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rnk
    FROM Employee AS E
    LEFT JOIN Department as d
    ON d.id = e.departmentId) as t
WHERE rnk <= 3
ORDER BY Department, Salary DESC;
