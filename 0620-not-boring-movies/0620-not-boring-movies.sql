# Write your MySQL query statement below
select *
from cinema c
where c.description <> 'boring'
and c.id%2 <> 0
order by c.rating desc;