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
