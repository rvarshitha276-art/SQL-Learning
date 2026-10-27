-- 04. Aggregate functions and GROUP BY
-- Run sample_data.sql first.

SELECT COUNT(*) AS total_students
FROM students;

SELECT ROUND(AVG(marks), 2) AS average_marks
FROM students;

SELECT MAX(marks) AS highest_marks, MIN(marks) AS lowest_marks
FROM students;

-- Average and student count for each department.
SELECT d.department_name,
       COUNT(s.student_id) AS student_count,
       ROUND(AVG(s.marks), 2) AS average_marks
FROM departments d
LEFT JOIN students s ON s.department_id = d.department_id
GROUP BY d.department_id, d.department_name
ORDER BY d.department_name;

-- Keep groups whose average marks are at least 80.
SELECT department_id, ROUND(AVG(marks), 2) AS average_marks
FROM students
GROUP BY department_id
HAVING AVG(marks) >= 80;
