# Write your MySQL query statement below
select e1.employee_id
from employees e1 
where e1.salary < 30000
and e1.manager_id not in (
    select e.employee_id from employees e
)
order by e1.employee_id;