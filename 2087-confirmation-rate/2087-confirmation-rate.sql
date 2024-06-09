/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */
-- declare @total float;
-- select @total = count(*) from confirmations;

select s.user_id, ROUND((AVG(CASE WHEN action='confirmed' THEN 1.0 ELSE 0 END)),2) AS confirmation_rate 
from Signups as s 
left join Confirmations as c ON s.user_id = c.user_id
group by s.user_id;