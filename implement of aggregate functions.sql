CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    marks INT
);
INSERT INTO student (id, name, subject, marks) VALUES
(1, 'Raju', 'Math', 85),
(2, 'Sita', 'Science', 90),
(3, 'Ravi', 'Math', 70),
(4, 'Meena', 'Science', 95),
(5, 'John', 'Math', 80);

SELECT * FROM student;
SELECT COUNT(*) AS total_students FROM student;
SELECT SUM(marks) AS total_marks FROM student;
SELECT AVG(marks) AS average_marks FROM student;
SELECT MAX(marks) AS highest_marks FROM student;
SELECT MIN(marks) AS lowest_marks FROM student;
