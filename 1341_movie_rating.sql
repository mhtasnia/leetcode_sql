(SELECT u.name as results
FROM MovieRating AS mr
INNER JOIN Users AS u
ON u.user_id = mr.user_id
GROUP BY u.user_id, u.name
ORDER BY COUNT(mr.rating) DESC, u.name ASC              
LIMIT 1 )

UNION ALL

(SELECT m.title as results
FROM MovieRating AS mr
JOIN Movies AS m ON mr.movie_id = m.movie_id
WHERE mr.created_at >= '2020-02-01' AND mr.created_at < '2020-03-01'
GROUP BY m.movie_id, m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC          
LIMIT 1)    
  
