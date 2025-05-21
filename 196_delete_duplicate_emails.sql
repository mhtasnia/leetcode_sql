DELETE FROM Person
WHERE id NOT IN (
    SELECT id_to_keep
    FROM(
        SELECT MIN(id) as id_to_keep
        FROM Person
        GROUP BY email
    ) as f
);
