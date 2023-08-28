-- between
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY between 2000 and 4000
order by SALARY;

-- in
select CITY, COUNTRY_ID
from LOCATIONS
where COUNTRY_ID in ('UK', 'JP', 'US');

-- like
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like 'Ad%';

-- aggregate functions
select min(SALARY)
from EMPLOYEES;

select DEPARTMENT_ID, max(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID;

select round(avg(SALARY), 4)
from EMPLOYEES;

select sum(SALARY)
from EMPLOYEES;

-- group by
select JOB_ID, sum(SALARY)
from EMPLOYEES
group by JOB_ID
having sum(SALARY) > 20000;

-- subquery
select FIRST_NAME, LAST_NAME
from EMPLOYEES
where salary = (select max(SALARY) from EMPLOYEES);

-- concatenation
select FIRST_NAME || ' ' || LAST_NAME as full_name
from EMPLOYEES;

-- initcap()
select initcap(EMAIL)
from EMPLOYEES;

--substr
select FIRST_NAME, substr(FIRST_NAME, 1, 3)
from EMPLOYEES;

-- virtual table
create view EMAIL_ADDRESS as
select lower(EMAIL) || '@gmail.com' as "Email Address"
from EMPLOYEES;

select * from EMAIL_ADDRESS;
drop view EMAIL_ADDRESS;

