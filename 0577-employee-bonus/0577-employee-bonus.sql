# Write your MySQL query statement below

SELECT E.name AS name, B.bonus as bonus from Employee E LEFT JOIN Bonus B USING(empID) WHERE COALESCE(bonus, 0) < 1000;

