# Write your MySQL query statement below
select e2.name
from employee e1
join employee e2
on e1.managerId = e2.id
group by e2.name, e1.managerId
having count(e1.id)>=5;