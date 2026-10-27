-- 02. INSERT, UPDATE, and DELETE
-- Run sample_data.sql first.

-- Insert one example student (uses an unused ID).
INSERT INTO students (student_id, first_name, last_name, age, department_id, marks)
VALUES (107, 'Divya', 'Nair', 20, 2, 81.00);

-- Update a student's marks.
UPDATE students
SET marks = 83.00
WHERE student_id = 107;

-- Confirm the change.
SELECT * FROM students WHERE student_id = 107;

-- Delete only the example row added above.
DELETE FROM students
WHERE student_id = 107;
