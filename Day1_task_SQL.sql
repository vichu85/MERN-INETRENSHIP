----------------------------------Creation of database----------------------------------

--CREATE DATABASE SCHOOL
--USE SCHOOL

----------------------------------Creation of table for students----------------------------------

CREATE TABLE students(regno int,name varchar(20),age int,major varchar(20),marks int);

----------------------------------Insertion of value into table----------------------------------

INSERT INTO students VALUES
(3,'arun',19,'maths',90),
(4,'bala',18,'english',85),
(1,'abisek',19,'maths',80),
(5,'dheena',19,'cse',90),
(6,'manoj',18,'social',92),
(9,'sasti',17,'english',75),
(10,'swarnesh',19,'maths',95),
(2,'alex',20,'cse',70),
(8,'rithvin',18,'social',85),
(7,'rithvik',19,'maths',98);

----------------------------Arranging the students data in ascending order----------------------------

SELECT * FROM students order by name;

----------------------------Arranging the  data in desending order----------------------------

SELECT * FROM students order by name desc;

----------------------------Count of students having major subject as maths----------------------------

SELECT count() FROM students where major='maths';

----------------------------Average marks scored by the students-----------------------------------
SELECT avg(marks) from students;



-----------------------------------Example for join in sql-----------------------------------

--------------------------Creation of table for students of class A--------------------------

CREATE TABLE students_of_class_a(regno int,name varchar(20),age int,sec varchar(5),major varchar(20),marks int);

----------------------------------Insertion of value into table----------------------------------

INSERT INTO students_of_class_a VALUES
(3,'arun',19,'A','maths',90),
(4,'bala',18,'A','english',85),
(1,'abisek',19,'A','science',80),
(5,'dheena',19,'A','cse',90),
(2,'alex',20,'A','social',70);

----------------------------------Creation of table for students of class B----------------------------------

CREATE TABLE students_of_class_b(regno int,name varchar(20),age int,sec varchar(5),major varchar(20),marks int);

----------------------------------Insertion of value into table----------------------------------

INSERT INTO students_of_class_b VALUES
(3,'charle',19,'B','maths',84),
(4,'dharun',18,'B','english',78),
(1,'arjun',19,'B','science',97),
(5,'elango',19,'B','cse',87),
(2,'bheem',20,'B','social',78);

----------------------------------INNER JOIN IMPLEMENTATION-----------------------------------

select 
students_of_class_a.major,
students_of_class_a.sec,
students_of_class_a.marks,
students_of_class_b.sec,
students_of_class_b.marks
from students_of_class_a
inner join students_of_class_b
on students_of_class_a.major = students_of_class_b.major;

----------------------------------LEFT JOIN IMPLEMENTATION-----------------------------------

select 
students_of_class_a.major,
students_of_class_a.sec,
students_of_class_a.marks,
students_of_class_b.sec,
students_of_class_b.marks
from students_of_class_a
left join students_of_class_b
on students_of_class_a.major = students_of_class_b.major;

----------------------------------RIGHT JOIN IMPLEMENTATION-----------------------------------

select 
students_of_class_a.major,
students_of_class_a.sec,
students_of_class_a.marks,
students_of_class_b.sec,
students_of_class_b.marks
from students_of_class_a
right join students_of_class_b
on students_of_class_a.major = students_of_class_b.major;

----------------------------------Cross JOIN IMPLEMENTATION-----------------------------------

select 
students_of_class_a.major,
students_of_class_a.sec,
students_of_class_a.marks,
students_of_class_b.sec,
students_of_class_b.marks
from students_of_class_a
cross join students_of_class_b
on students_of_class_a.major = students_of_class_b.major;
