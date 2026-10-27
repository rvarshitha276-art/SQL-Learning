-- 06. Subqueries
-- Run sample_data.sql first.

-- Students whose marks are above the overall average.
SELECT first_name, last_name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students)
ORDER BY marks DESC;

-- Students in the Computer Science department.
SELECT first_name, last_name
FROM students
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Computer Science'
);

-- Departments that have at least one student scoring 90 or more.
SELECT department_name
FROM departments
WHERE department_id IN (
    SELECT department_id
    FROM students
    WHERE marks >= 90
);
