# Write your MySQL query statement below
select q1.query_name, round(sum(q1.rating*1.0/q1.position)*1.0/count(*),2) as quality, round(sum(case when q1.rating<3 then 1.0 else 0 end)*100/count(q1.position),2) as poor_query_percentage
from queries q1
where q1.query_name is not null
group by q1.query_name;