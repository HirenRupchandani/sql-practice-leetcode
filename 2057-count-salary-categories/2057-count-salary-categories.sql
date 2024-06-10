# MySQL
-- WITH cte AS (
--     SELECT 
--         CASE 
--             WHEN a1.income < 20000 THEN 'Low Salary'
--             WHEN a1.income BETWEEN 20000 AND 50000 THEN 'Average Salary'
--             ELSE 'High Salary'
--         END AS category 
--     FROM Accounts a1  
-- )

-- SELECT 
--     cte.category,
--     ifnull(COUNT(*), 0) AS accounts_count
-- FROM cte
-- GROUP BY cte.category;

# Solution: To take care of 0 values

select "Low Salary" as Category,
sum(case when income<20000 then 1 else 0 end) as accounts_count
from accounts
union
select "Average Salary" as Category,
sum(case when income between 20000 and 50000 then 1 else 0 end) as accounts_count
from accounts
union
select "High Salary" as Category,
sum(case when income>50000 then 1 else 0 end) as accounts_count
from accounts