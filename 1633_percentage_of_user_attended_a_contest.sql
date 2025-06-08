# Write your MySQL query statement below
select contest_id, round(((count(user_id)/total)*100), 2) as percentage
from Register 
cross join
    (select count(*) as total 
    from Users) as total_user
group by contest_id
order by percentage desc, contest_id asc
