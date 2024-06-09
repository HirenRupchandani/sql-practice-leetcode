# Write your MySQL query statement below

# The SQL query first performs a cross join between the Students and Subjects tables, to create a result set that includes all possible combinations of students and subjects. It then left joins this result set with the Examinations table, using both the student_id and subject_name columns, to count the number of times each student attended each exam.

select s.student_id, s.student_name, sub.subject_name, count(e.student_id) as attended_exams from Students s CROSS JOIN Subjects sub
left join Examinations e ON s.student_id=e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;