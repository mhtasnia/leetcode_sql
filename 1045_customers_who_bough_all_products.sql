SELECT
    customer_id
FROM
    Customer
GROUP BY
    customer_id
HAVING 
    count(DISTINCT product_key) =   (SELECT
                                        COUNT(product_key)
                                    FROM 
                                        Product
                                    );
