# Write your MySQL query statement below
select department, employee, salary
from (
    select d.name as department,
    e.name as employee,
    e.salary,
    dense_rank() over (partition by d.name order by e.salary desc) as dept_rank
    from employee e join department d on e.DepartmentId = d.id
) as t where t.dept_rank<=3