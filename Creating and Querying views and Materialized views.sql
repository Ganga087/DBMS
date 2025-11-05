CREATE TABLE student (
    sid INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    dept_id INT
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO department VALUES(101, 'CSE');
INSERT INTO department VALUES(102, 'ECE');
INSERT INTO department VALUES(103, 'EEE');

INSERT INTO student VALUES(1, 'Raju', 85, 101);
INSERT INTO student VALUES(2, 'Sita', 90, 102);
INSERT INTO student VALUES(3, 'Ravi', 70, 103);
INSERT INTO student VALUES(4, 'Meena', 95, 102);
INSERT INTO student VALUES(5, 'John', 80, 101);

/*creating simple view */
CREATE VIEW student_info AS
SELECT s.sid, s.name, s.marks, d.dept_name
FROM student s
JOIN department d
ON s.dept_id = d.dept_id;

SELECT * FROM student_info;

UPDATE high_scorers
SET marks = 95
WHERE name = 'Sita';

DROP VIEW student_info;

/*. MATERIALIZED VIEW*/
CREATE MATERIALIZED VIEW dept_avg_marks AS
SELECT d.dept_name, AVG(s.marks) AS avg_marks
FROM student s
JOIN department d
ON s.dept_id = d.dept_id
GROUP BY d.dept_name;

REFRESH MATERIALIZED VIEW dept_avg_marks;

CREATE MATERIALIZED VIEW dept_avg_marks
REFRESH FAST ON COMMIT
AS
SELECT d.dept_name, AVG(s.marks) AS avg_marks
FROM student s
JOIN department d
ON s.dept_id = d.dept_id
GROUP BY d.dept_name;

DROP MATERIALIZED VIEW dept_avg_marks;

