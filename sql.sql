-- create database
create database collage;
create database if not exists collage;

-- delete database 
drop database collage;
drop database if exists collage1;

-- use database
use collage;

-- show databases
show databases;

-- show tables
show tables;

-- create table
create table student(
	id int primary key,
    name varchar(50),
    age int not null
);

create table teacher(
	id int primary key,
    name varchar(50),
    subject varchar(100)
);

-- view table
select * from collage.student;
select * from student;
select * from teacher;
select id from teacher;
select id, name from teacher;

-- insert data in table
insert into student(id, name, age)
values(1, "sam", 24);

insert into student
values(2, "sam", 24);

insert into student
values
(3, "ram", 24),
(4, "jam", 78),
(5, "tam", 34);

insert into student values(16, "wam", 24),(57, "zam", 78);

select * from student;

-- unique and not null and primary key
use collage;

create table temp1(
	id int not null unique,
    primary key(id)
);

insert into temp1 values(100);
insert into temp1 values(100);
insert into temp1 values(null);

select * from temp1;

-- primary key
create table temp2(
	id int,
    primary key(id)
);

insert into temp2 values(100);
insert into temp2 values(100);
insert into temp2 values(null);

select * from temp2;

-- foreign key
create table temp3(
	tid int,
    foreign key(tid) references temp2(id)
);

-- default
create table emp(
	id int,
    salary int default 50000
);

insert into emp(id) values(1);
insert into emp values(2, 1000000);

select * from emp;

-- check 
create table city(
	id int primary key,
    city varchar(100),
    age int,
    constraint age_check check(age>=18 or city="pune")
);

insert into city values(1, "pune", 100);

select * from city;

-- 

CREATE TABLE student ( 
	rollno INT PRIMARY KEY, 
	name VARCHAR(50), 
	marks INT NOT NULL, 
	grade VARCHAR(1), 
	city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"), 
(106, "farah", 82, "B", "Delhi");

-- select 
SELECT name, grade FROM student; 
select * from student;
select city from student;
select distinct city from student;

-- where
select * from student where marks>=80;
select * from student where city="Mumbai";

select * from student where marks>=90 and city="Mumbai";
select * from student where marks>=90 or city="Mumbai";

select * from student where marks+10 >= 90;
select * from student where marks=82;
select * from student where marks!=82;

-- between
select * from student where marks between 70 and 90;
-- in
select * from student where city in ("Delhi", "Pune");
-- not in
select * from student where city not in ("Delhi", "Pune");

-- limit
select * from student limit 3;

-- order by
select * from student order by grade;
select * from student order by grade asc;
select * from student order by grade desc;

-- Aggregate Functions
select count(name) from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select avg(marks) from student;

-- group by
select city, count(name) from student group by city;


-- Q) Write the query to find avg marks in each city in ascending order
select city, avg(marks) from student group by city order by avg(marks) asc;

-- Q) Write a query to find sum of marks by grades in ascending order
select grade, sum(marks) from student group by grade order by grade asc;
