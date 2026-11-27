USE COLLEGE;
SELECT*FROM STUDENTS;

#CASE REVISION :-
select name,marks,
case
    when marks >=90 then 'DISTINCTION'
    when marks >=50 then 'PASS'
    else 'FAIL'
    end as RESULT
from students;

select name,marks,
case 
    when marks is null then 'MARKS MISSING'
    else 'MARKS ADDED'
    end as STAUS
from students;

#COALESCE:-

SELECT NAME,coalesce(marks,0) as marks_clean
from students;

SELECT name, marks,
    COALESCE(CAST(marks AS CHAR), 'Not available') AS marks_text
FROM students;







    