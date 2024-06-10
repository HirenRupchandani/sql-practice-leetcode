# Write your MySQL query statement below
select a.sell_date, count(distinct a.product) as num_sold, group_concat(distinct a.product order by a.product asc SEPARATOR ',') as products
from Activities a
group by a.sell_date;

-- PostgreSQL:
-- SELECT column_to_group_by,
--        STRING_AGG(words_column, ' ' ORDER BY words_column) AS concatenated_words
-- FROM your_table
-- GROUP BY column_to_group_by;
