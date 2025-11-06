-- Create database and core tables

CREATE DATABASE IF NOT EXISTS quiz CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE quiz;

-- Teachers
CREATE TABLE IF NOT EXISTS teacher (
  tid INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  subject VARCHAR(100) NOT NULL
);

-- Students
CREATE TABLE IF NOT EXISTS student (
  sid INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);

-- Test attempts
CREATE TABLE IF NOT EXISTS testattempt (
  sid INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  tid INT NOT NULL,
  status TINYINT NOT NULL,
  result INT NOT NULL
);

-- Example seed data (optional)
-- INSERT INTO teacher (tid, name, password, subject) VALUES (1, 'Alice', 'pass', 'math');
-- INSERT INTO student (sid, name, password) VALUES (1001, 'Bob', 'pass');

-- Note: A subject-named table will be created by the app when adding a teacher
-- e.g., CREATE TABLE math (id INT AUTO_INCREMENT PRIMARY KEY, question VARCHAR(500), a VARCHAR(500), b VARCHAR(500), c VARCHAR(500), d VARCHAR(500), correct VARCHAR(1));


