SELECT
    e1.employee_id
FROM
    Employees AS e1
LEFT JOIN
    Employees AS manager_details ON e1.manager_id = manager_details.employee_id
WHERE
    e1.manager_id IS NOT NULL 
    AND manager_details.employee_id IS NULL
    AND e1.salary < 30000
ORDER BY e1.employee_id; 
