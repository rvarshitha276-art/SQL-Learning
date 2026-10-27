-- 07. Constraints and data integrity
-- Examples of PRIMARY KEY, NOT NULL, UNIQUE, CHECK, and FOREIGN KEY.

CREATE TABLE IF NOT EXISTS library_members (
    member_id INTEGER PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INTEGER CHECK (age >= 16)
);

-- Valid example row:
INSERT INTO library_members (member_id, full_name, email, age)
VALUES (1, 'Sam Lee', 'sam.lee@example.com', 19);

SELECT * FROM library_members;

-- This invalid row violates the age CHECK constraint.
-- Uncomment only to test constraint handling:
-- INSERT INTO library_members (member_id, full_name, email, age)
-- VALUES (2, 'Test User', 'test@example.com', 12);

-- Cleanup example table if desired:
-- DROP TABLE library_members;
