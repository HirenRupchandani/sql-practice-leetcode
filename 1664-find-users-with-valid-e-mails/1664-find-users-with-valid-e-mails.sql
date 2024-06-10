# Write your MySQL query statement below
select *
from users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$';
-- Explanation of the SQL Query:

--     SELECT user_id, name, mail: This part of the query specifies which columns to retrieve, which are user_id, name, and mail.
--     FROM Users: Indicates the table from which the data is being selected.
--     WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$': This condition filters the results based on the mail column.
--         REGEXP is MySQL's operator for regular expression matching.
--         ^ asserts the start of a line.
--         [a-zA-Z] ensures the email starts with an alphabetic character.
--         [a-zA-Z0-9._-]* allows any number of alphanumeric characters, dots, underscores, or dashes to follow.
--         @leetcode\\.com specifies that the domain must be '@leetcode.com'. The double backslashes \\ are used to escape the dot, which is a special character in regex (meaning "any character").
--         $ asserts the end of a line.