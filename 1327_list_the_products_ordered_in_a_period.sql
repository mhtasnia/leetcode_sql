# Write your MySQL query statement below
SELECT p.product_name, o.unit
FROM Products as p
INNER JOIN
(SELECT product_id, SUM(unit) as unit
FROM Orders
WHERE order_date like '2020-02-%'
GROUP BY product_id) as o
ON o.product_id = p.product_id
WHERE o.unit >= 100;
