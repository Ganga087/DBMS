CREATE TABLE student1 (
    id INT,
    name VARCHAR(50)
);
CREATE TABLE student2 (
    id INT,
    name VARCHAR(50)
);
INSERT INTO student1 VALUES (1, 'Raju');
INSERT INTO student1 VALUES (2, 'Sita');
INSERT INTO student1 VALUES (3, 'Ravi');
INSERT INTO student1 VALUES (4, 'Meena');
INSERT INTO student2 VALUES(3, 'Ravi');
INSERT INTO student2 VALUES(4, 'Meena');
INSERT INTO student2 VALUES(5, 'John');
INSERT INTO student2 VALUES(6, 'Divya');

SELECT * FROM student1
UNION
SELECT * FROM student2;

SELECT * FROM student1
UNION ALL
SELECT * FROM student2;

SELECT * FROM student1
INTERSECT
SELECT * FROM student2;

SELECT * FROM student1
MINUS
SELECT * FROM student2;

SELECT * FROM student1
EXCEPT
SELECT * FROM student2;

SELECT * FROM student1
UNION
SELECT * FROM student2
ORDER BY id;
