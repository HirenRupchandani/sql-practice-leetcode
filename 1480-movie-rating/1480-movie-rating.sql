# Write your MySQL query statement below

(select u.name as results
from users u
join movierating mr
on u.user_id = mr.user_id
group by u.name
order by count(mr.rating) desc, u.name asc
limit 1)
UNION ALL
(select m.title as results
from movies m
join movierating r
on m.movie_id = r.movie_id
where month(r.created_at) = 02 and year(r.created_at) = 2020
group by m.title
order by avg(r.rating) desc, m.title asc
limit 1
);