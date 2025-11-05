create table students 
( 
rollno varchar2(30), 
name varchar2(30) 
); 
insert into students values(01,'GANGA');
insert into students values(02,'ARJUN');
insert into students values(03,'HEMANTH');
insert into students values(04,'SAI');
SELECT * FROM students;
 
select name from students;

select * from students where rollno='02'; 

delete from students where rollno='04'; 

 update students  set name='KUMAR'  where rollno='03'; 