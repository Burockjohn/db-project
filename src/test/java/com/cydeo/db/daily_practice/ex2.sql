-- 1. list the initials of all the employees
select substr(FIRST_NAME, 0, 1) || '. ' || substr(LAST_NAME, 0, 1) || '.' as initials
from EMPLOYEES;

-- 2. list the full names of all employees ( fullname: Lastname FirstName)
select LAST_NAME || ' ' || FIRST_NAME as fullname
from EMPLOYEES;

-- 3. who has the longest name in the employees table?
select *
from EMPLOYEES
where length(FIRST_NAME) = (select max(length(FIRST_NAME)) from EMPLOYEES);

-- 4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
select *
from EMPLOYEES
where DEPARTMENT_ID in (90, 60, 100, 130, 120);

-- 5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select *
from EMPLOYEES
where DEPARTMENT_ID not in (90, 60, 100, 130, 120);

-- 6. divide employees into groups by using thier job id
select JOB_ID
from EMPLOYEES
group by JOB_ID;

-- 6.1 display the maximum salaries in each groups
select JOB_ID, max(SALARY)
from EMPLOYEES
group by JOB_ID;

-- 6.2 display the minimum salaries in each groups
select JOB_ID, min(SALARY)
from EMPLOYEES
group by JOB_ID;

-- 6.3 display the average salary of each group
select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID;

-- 6.4 how many employees are there in each group that have minimum salary of 5000 ?
select JOB_ID, count(*)
from EMPLOYEES
where SALARY >= 5000
group by JOB_ID;

-- 6.5 display the total budgets of each groups
select JOB_ID, sum(SALARY)
from EMPLOYEES
group by JOB_ID;

-- 7. display employees' full email addresses and full names
-- (assume that the domain of the email is @gmail)
select lower(EMAIL || '@gmail.com') as "email adress", FIRST_NAME || ' ' || LAST_NAME as "full name"
from EMPLOYEES;

-- 8. display full addresses from locations table in a single column
-- (full address: Street_Address,  CityName  ZipCode,  Country_id)
select street_address || ', ' || city || ' ' || postal_code || ', ' || country_id as "full address"
from locations;