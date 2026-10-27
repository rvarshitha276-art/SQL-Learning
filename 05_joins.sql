-- 05. JOIN examples
-- Run sample_data.sql first.

-- INNER JOIN: students with a matching department.
SELECT s.first_name, s.last_name, d.department_name
FROM students s
INNER JOIN departments d ON s.department_id = d.department_id
ORDER BY s.last_name;

-- LEFT JOIN: include every department, even if it has no students.
SELECT d.department_name, s.first_name, s.last_name
FROM departments d
LEFT JOIN students s ON s.department_id = d.department_id
ORDER BY d.department_name, s.last_name;

-- Join three tables to show course enrollments.
SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date
FROM enrollments e
INNER JOIN students s ON e.student_id = s.student_id
INNER JOIN courses c ON e.course_id = c.course_id
ORDER BY s.last_name, c.course_name;
