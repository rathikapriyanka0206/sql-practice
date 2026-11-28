#REVSION  OF CASE WHEN AND COALSCE

USE COLLEGE;

SELECT NAME , CITY ,
      CASE 
           WHEN CITY = 'madurai' then ' MADURAI PERSON'
           ELSE 'OTHER'
		END AS TYPE
FROM STUDENTS;

SELECT name , marks,
        case 
              when marks>=90 then 'TOP'
              when marks>=80 and marks <90 then 'GOOD'
              else 'KEEP TRYING'
			END AS RESULT
	FROM STUDENTS;
    
SELECT NAME , coalesce(marks,0) as mark_clean
from students;

select name , marks , coalesce(marks,50) as mark_min50
from students;


INSERT INTO students (name, marks) VALUES ('Kavin', 70);

select name , city, coalesce(city , 'unknown') as city_clean
from students;

select name,
           coalesce(marks,0) as final_marks,
	case
         when coalesce(marks,0)>=50 then 'pass'
         else 'fail'
	end as grade
from students;

SELECT name, city,
    CASE
        WHEN city IS NULL THEN 'Unknown'
        WHEN city = 'Coimbatore' THEN 'Local'
        ELSE 'Outside'
    END AS region
FROM students;

select name , marks ,
    case 
        when marks >=60 then 'pass'
        else 'fail'
	end as result 
from students;
         
select city , avg(marks) as avg_marks from students
group by city 
having avg(marks)>75;

select * from students
where (name like 'M%' or name like 'K%')
            and  marks is not null;


SELECT city,
    SUM(CASE WHEN marks IS NULL THEN 1 ELSE 0 END) AS missing_count
FROM students
GROUP BY city
HAVING SUM(CASE WHEN marks IS NULL THEN 1 ELSE 0 END) >= 1;

