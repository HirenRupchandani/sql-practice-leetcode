# Write your MySQL query statement below

# Self-join Activity and check for constraints like same machine and process id as well as start and end activity.

select s.machine_id, ROUND(AVG(e.timestamp - s.timestamp), 3) AS processing_time FROM Activity s JOIN Activity e ON
s.machine_id = e.machine_id AND s.process_id = e.process_id AND
s.activity_type = 'start' AND e.activity_type = 'end'
GROUP BY s.machine_id;