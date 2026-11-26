use college;
select*from students;

select * from students where city in ("Madurai","Salem");

select city,count(*) from students 
group by city ;

select city ,count(*) from students
group by city 
having count(*)>1;

select name , marks,
case 
    when marks >= 50 then 'PASS'
    ELSE 'FAIL'
END AS RESULT
from students;

select name,city ,
case
    when city = 'Coimbatore' THEN 'LOCAL'
    ELSE 'OUTSIDE'
END AS REGION 
FROM STUDENTS;

SELECT name , marks,
case
	  when marks>85 then 'HIGH'
      when marks between 80 AND 85 then 'MEDIUM'
      ELSE 'LOW'
      END AS LEVEL
      FROM STUDENTS;
      
select NAME,CITY ,
CASE
	  WHEN CITY = 'COIMBATORE' THEN 'SOUTH-WEST'
      WHEN CITY = 'CHENNAI' THEN 'NORTH'
      ELSE 'OTHER'
      end as ZONE
from students;

SELECT NAME ,MARKS,
CASE 
     WHEN MARKS IS NULL THEN 'MARK MISSING'
     ELSE 'MARK ADDED'
     END STATUS
FROM STUDENTS;