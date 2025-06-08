# Write your MySQL query statement below
# Write your MySQL query statement below
select query_name, round((sum((rating/position))/count(rating)),2) as quality,
round(((count(case when rating < 3 then 1 end )) / count(rating) * 100), 2) as poor_query_percentage
from Queries 
group by query_name
having query_name is not null
