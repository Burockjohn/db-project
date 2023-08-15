-- get me the highest salary
select max(SALARY)
from EMPLOYEES;

-- how to find employees information of who is making highest salary in the company
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

-- find the second highest salary
-- get highest salary first
select max(SALARY)
from EMPLOYEES;

-- highest after 24k
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary? --> INTERVIEW QUESTION!!!!!!!
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES where SALARY < (select max(SALARY) from EMPLOYEES));


----------
-- list the employees top 10
select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc;

-- get the first 10 people than order them high to low based on salary --> INTERVIEW QUESTION!!!!!
select *
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 11;
















