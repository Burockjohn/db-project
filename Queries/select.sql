select *
from EMPLOYEES;
-- reads all columns from employees table

select *
from departments;
-- reads all columns from departments table

select FIRST_NAME
from EMPLOYEES;
-- get only firstname from employees table

select CITY
from LOCATIONS;
-- display city names

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES;
-- get me first_name, last_name and salary

select STREET_ADDRESS, POSTAL_CODE
from LOCATIONS;
-- get me street address and postal code

select distinct FIRST_NAME from EMPLOYEES;
-- remove duplicates