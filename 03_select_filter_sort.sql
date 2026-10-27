-- 03. SELECT, WHERE, ORDER BY, DISTINCT, and LIKE
-- Run sample_data.sql first.

-- Display every student.
SELECT * FROM students;

-- Select only specific columns.
SELECT first_name, last_name, marks
FROM students;

-- Filter students who scored at least 80.
SELECT first_name, last_name, marks
FROM students
WHERE marks >= 80;

-- Sort by marks, highest first.
SELECT first_name, last_name, marks
FROM students
ORDER BY marks DESC;

-- List the distinct department IDs represented by students.
SELECT DISTINCT department_id
FROM students;

-- Find first names that begin with 'A'.
SELECT first_name
FROM students
WHERE first_name LIKE 'A%';

-- Filter with multiple conditions.
SELECT first_name, last_name, marks
FROM students
WHERE marks >= 75 AND age <= 21;
