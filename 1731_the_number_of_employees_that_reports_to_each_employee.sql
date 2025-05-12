SELECT 
    mgr.employee_id, 
    mgr.name, 
    COUNT(emp.reports_to) as reports_count, 
    ROUND(AVG(emp.age)) as average_age
FROM Employees emp
INNER JOIN Employees mgr  ON emp.reports_to = mgr.employee_id 
GROUP BY mgr.employee_id
ORDER BY mgr.employee_id;
