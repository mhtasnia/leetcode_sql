# Write your MySQL query statement below
SELECT 
    class 
FROM (
    SELECT
        class,
        COUNT(student) as total_student
    FROM 
        Courses
    GROUP BY 
        class
) as total
WHERE 
    total_student >= 5;
