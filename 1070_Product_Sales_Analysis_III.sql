SELECT p.product_id, s.year as first_year, s.quantity, s.price
FROM Sales as s
INNER JOIN(
    SELECT product_id,
    MIN(year) as min_year
    FROM Sales as s 
    GROUP BY product_id 
)as first_sales ON s.product_id = first_sales.product_id AND s.year = first_sales.min_year
LEFT JOIN Product as p 
ON s.product_id = p.product_id;
