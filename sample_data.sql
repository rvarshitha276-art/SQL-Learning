-- Sample database setup for the SQL Learning repository.
-- Run this file first. Table cleanup is included so it can be re-run.

DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age >= 16),
    department_id INTEGER,
    marks DECIMAL(5,2) CHECK (marks >= 0 AND marks <= 100),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL CHECK (credits > 0)
);

CREATE TABLE enrollments (
    student_id INTEGER,
    course_id INTEGER,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics');

INSERT INTO students (student_id, first_name, last_name, age, department_id, marks) VALUES
(101, 'Asha', 'Rao', 20, 1, 88.50),
(102, 'Rahul', 'Kumar', 21, 2, 76.00),
(103, 'Meera', 'Shah', 19, 1, 92.00),
(104, 'Arjun', 'Patil', 22, 3, 68.50),
(105, 'Neha', 'Das', 20, 2, 84.00),
(106, 'Kiran', 'Joshi', 21, 1, 79.50);

INSERT INTO courses (course_id, course_name, credits) VALUES
(201, 'Database Systems', 4),
(202, 'Web Technology', 3),
(203, 'Programming Fundamentals', 4);

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(101, 201, '2026-01-12'),
(101, 202, '2026-01-13'),
(102, 201, '2026-01-14'),
(103, 203, '2026-01-15'),
(104, 202, '2026-01-16'),
(105, 201, '2026-01-17'),
(106, 203, '2026-01-18');
