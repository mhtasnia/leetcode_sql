SELECT ROUND(SUM(T1.tiv_2016), 2) AS tiv_2016
FROM Insurance AS T1
WHERE
    EXISTS (
        SELECT 1
        FROM Insurance AS T2
        WHERE
            T1.tiv_2015 = T2.tiv_2015 
            AND T1.pid <> T2.pid    
    )
    AND
    NOT EXISTS (
        SELECT 1
        FROM Insurance AS T3
        WHERE
            T1.lat = T3.lat           
            AND T1.lon = T3.lon         
            AND T1.pid <> T3.pid      
    );
