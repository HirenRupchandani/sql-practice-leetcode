# Write your MySQL query statement below
select ifnull(max(salary), null) as SecondHighestSalary 
from employee
where salary < (select max(salary) from employee);

-- Another Solution from solutions:
-- select
-- (select distinct Salary 
-- from Employee order by salary desc 
-- limit 1 offset 1) 
-- as SecondHighestSalary;