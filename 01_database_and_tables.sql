-- 01. Database and table basics
-- Database creation syntax varies by database engine.
-- MySQL example: CREATE DATABASE college_db;
-- Then select/use the database in your SQL client.

CREATE TABLE IF NOT EXISTS example_users (
    user_id INTEGER PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE
);

-- View table structure using your SQL client.
SELECT * FROM example_users;

-- Remove this example table when you no longer need it:
-- DROP TABLE example_users;
