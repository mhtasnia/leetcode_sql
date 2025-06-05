SELECT w.id
FROM Weather AS w
INNER JOIN Weather AS y ON y.recordDate = w.recordDate - INTERVAL 1 DAY
WHERE w.temperature > y.temperature;
