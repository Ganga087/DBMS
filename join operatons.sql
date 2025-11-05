CREATE TABLE student (
    sid INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT
);
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO student (sid, name, dept_id) VALUES(1, 'Raju', 101);
INSERT INTO student (sid, name, dept_id) VALUES(2, 'Sita', 102);
INSERT INTO student (sid, name, dept_id) VALUES(3, 'Ravi', 103);
INSERT INTO student (sid, name, dept_id) VALUES(4, 'Meena', 104);
INSERT INTO student (sid, name, dept_id) VALUES(5, 'John', NULL);

INSERT INTO department (dept_id, dept_name) VALUES(101, 'CSE');
INSERT INTO department (dept_id, dept_name) VALUES(102, 'ECE');
INSERT INTO department (dept_id, dept_name) VALUES(103, 'EEE');
INSERT INTO department (dept_id, dept_name) VALUES(105, 'CIVIL');

select * from student;
select * from department;

SELECT student.name, department.dept_name
FROM student
LEFT JOIN department
ON student.dept_id = department.dept_id;

SELECT student.name, department.dept_name
FROM student
RIGHT JOIN department
ON student.dept_id = department.dept_id;

SELECT student.name, department.dept_name
FROM student
LEFT JOIN department ON student.dept_id = department.dept_id
UNION
SELECT student.name, department.dept_name
FROM student
RIGHT JOIN department ON student.dept_id = department.dept_id;

SELECT student.name, department.dept_name
FROM student
CROSS JOIN department;
