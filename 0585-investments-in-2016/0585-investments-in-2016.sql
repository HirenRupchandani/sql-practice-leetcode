# Write your MySQL query statement below
select round(SUM(i.TIV_2016), 2) AS TIV_2016
from insurance i
where i.tiv_2015 in (
    select tiv_2015
    from insurance 
    group by tiv_2015
    having count(*) > 1
)
and concat(lat, lon) in (
    select concat(lat, lon)
    from insurance
    group by lat, lon
    having count(*) = 1
);