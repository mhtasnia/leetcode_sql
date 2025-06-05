# Write your MySQL query statement below
SELECT person_name
FROM 
    (
        SELECT turn, person_name, 
        SUM(weight) OVER (ORDER BY turn ASC) AS t_weight
        FROM Queue
        ORDER BY turn ASC
    ) as t
WHERE t_weight <= 1000
ORDER BY t_weight DESC
LIMIT 1;
