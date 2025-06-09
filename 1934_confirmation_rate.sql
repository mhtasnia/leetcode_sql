SELECT 
    s.user_id, 
    IFNULL(Round((COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END) / 
    COUNT(c.action)), 2), 0)AS confirmation_rate
FROM 
    Signups AS s
LEFT JOIN 
    Confirmations AS c ON s.user_id = c.user_id
GROUP BY 
    s.user_id;
