SELECT 
    CASE
        WHEN id % 2 = 1 and id+1 in (SELECT id FROM SEAT) THEN id+1
        WHEN id % 2 = 0 THEN id-1
        else id
    END AS id,
student
FROM Seat
ORDER BY id;
