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
INSERT INTO student VALUES(1, 'Raju', 85, 101);
INSERT INTO student VALUES(2, 'Sita', 90, 102);
INSERT INTO student VALUES(3, 'Ravi', 70, 103);
INSERT INTO student VALUES(4, 'Meena', 95, 102);
INSERT INTO student VALUES(5, 'John', 80, 101);

INSERT INTO department VALUES(101, 'CSE');
INSERT INTO department VALUES(102, 'ECE');
INSERT INTO department VALUES(103, 'EEE');
INSERT INTO department VALUES(104, 'CIVIL');

/*nested query*/
SELECT name, marks
FROM student
WHERE dept_id = (
    SELECT dept_id
    FROM department
    WHERE dept_name = 'ECE'
);
SELECT name, marks
FROM student
WHERE marks > (
    SELECT AVG(marks)
    FROM student
);
/*. CORRELATED SUBQUERY .*/
SELECT s1.name, s1.marks, s1.dept_id
FROM student s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM student s2
    WHERE s2.dept_id = s1.dept_id
);
SELECT dept_name
FROM department d
WHERE EXISTS (
    SELECT 1
    FROM student s
    WHERE s.dept_id = d.dept_id
    AND s.marks > 90
);
