
# Day 2: IS NULL, LIKE, IN, and more
# Database: college
# Table: students

USE college;

SELECT * FROM students;

-- ---------- Topic 1: IS NULL ----------

-- Add a student with missing marks
INSERT INTO students (name, city) VALUES ('Divya', 'Madurai');

select * from students 
where marks is null; 

select name,marks from students
where marks is null;

select* from students 
where marks is not null;

select * from students where name like 'P%';
select * from students where name like '%a';
select * from students where city like '%al%';

SELECT * FROM students WHERE city IN ('Salem', 'Madurai');
select * from students where city = 'Coimbatore' or city = 'Chennai';
select * from students where city not in( 'Salem','Madurai'); 

select min(marks) as minimum_marks from students;
select sum(marks) as total_marks from students;
select city , max(marks) as maximum_marks from students
group by city;

select count(*) from students ;
select count(marks) from students;
select distinct city from students;
select count(distinct city) from students;

select city,avg(marks) as average_marks from students
group by city
having avg(marks) >80;

select  city , max(marks) as highest_marks from students
group by city
having max(marks)>80;

