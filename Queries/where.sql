-- i want to see firstname lastname phone number of david(s)
select FIRST_NAME, LAST_NAME, PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME = 'David'
  and LAST_NAME = 'Lee';

-- get me all information who is making more than 7000 salary
select *
from EMPLOYEES
where SALARY > 7000;

-- get me email of who is making less than 4000
select EMAIL
from EMPLOYEES
where SALARY < 4000;

-- get me all info who is working as IT_PROG or SA_REP
select *
from EMPLOYEES
where JOB_ID = 'IT_PROG'
   or JOB_ID = 'SA_REP';

-- get me first name, last name salary sho is making more than 500 and less than 10000
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY >= 5000
  and SALARY <= 10000;

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY between 5000 and 10000;

-- get me all info where employee_id 135 176 154 129
select *
from EMPLOYEES
where EMPLOYEE_ID in (135, 176, 154, 129);

-- get me city of where country_id IT, US, UK
select CITY
from LOCATIONS
where COUNTRY_ID in('IT','US','UK');
