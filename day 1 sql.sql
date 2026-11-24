create database college;
USE college;

create table students(
id INTEGER PRIMARY KEY auto_increment,
name TEXT,
city TEXT,
marks INTEGER
);

INSERT INTO students(name,city,marks) VALUES
('Rathika','Coimbatore',88),
('Sara','Chennai',78),
('John','Coimbatore',90),
('Priyanka','Madurai',99);

SELECT * FROM STUDENTS ;

SELECT avg(marks) from students;

select city ,count(*) as total_students
from students
group by city;

select city ,avg(marks) from students
group by city;

select * from students
where marks between 80 and 90;

update students
set marks = 85
where id = 2;

delete from students 
where id = 3;


DROP DATABASE IF EXISTS college;
create database college;
USE college;
