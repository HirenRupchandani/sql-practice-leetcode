# Write your MySQL query statement below
# Description is incorrect - select year of first sold of each prodcut in Sales table
# use them to filter Sales table
select s.product_id, s.year as first_year, s.quantity, s.price
from Sales s
where (s.product_id, s.year) in (
    select product_id, min(year)
    from sales 
    group by product_id
)