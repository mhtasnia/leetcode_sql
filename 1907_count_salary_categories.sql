SELECT
    AllCategories.category,
    COALESCE(COUNT(t.account_id), 0) AS accounts_count 
FROM
    (
        SELECT 'Low Salary' AS category
        UNION ALL
        SELECT 'Average Salary' AS category
        UNION ALL
        SELECT 'High Salary' AS category
    ) AS AllCategories
LEFT JOIN
    (
        SELECT
            account_id,
            CASE
                WHEN income < 20000 THEN 'Low Salary'
                WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
                ELSE 'High Salary'
            END AS category
        FROM
            Accounts
    ) AS t
ON
    AllCategories.category = t.category 
GROUP BY
    AllCategories.category 
