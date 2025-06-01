SELECT
    p_outer.product_id,
    COALESCE(
        (SELECT p_inner.new_price
         FROM Products AS p_inner
         WHERE p_inner.product_id = p_outer.product_id 
           AND p_inner.change_date <= '2019-08-16'
         ORDER BY p_inner.change_date DESC           
         LIMIT 1),
        10
    ) AS price
FROM
    (SELECT DISTINCT product_id FROM Products) AS p_outer;
