# Write your MySQL query statement below
select e1.employee_id, e1.department_id
from employee e1
where e1.primary_flag = 'Y'
UNION
select e2.employee_id, e2.department_id
from employee e2
group by e2.employee_id
having count(e2.department_id) = 1
