# Write your MySQL query statement below
# Using Lag function instead of 3 joins

-- select distinct num as ConsecutiveNums
-- from (
--     select id, num,
--     lag(num) over (order by id) as before_num,
--     lead(num) over (order by id) as after_num
--     from logs
-- ) as next_prev
-- where num = before_num and num = after_num;

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l1.id = l3.id - 2
WHERE l1.num = l2.num AND l2.num = l3.num;