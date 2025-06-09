# Write your MySQL query statement below
select distinct teacher_id, count(t.subject_id) as cnt
from (
    select distinct subject_id, teacher_id
    from Teacher
) as t
group by teacher_id
