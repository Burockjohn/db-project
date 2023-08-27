-- 1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
having JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

-- 2. Show all records whose last name contains 2 lowercase 'a's
select *
from EMPLOYEES
--where length(replace(LAST_NAME,'a','')) = length(LAST_NAME)-2
where LAST_NAME like '%a%a%';

-- 3. Display max salary for each department
select DEPARTMENT_ID, max(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID;

-- 4. Display total salary for each department except department_id 50, and where total salary >30000
select DEPARTMENT_ID, sum(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID
having DEPARTMENT_ID != 50
   and sum(SALARY) > 30000;

-- 5. Write a SQL query that returns first and last name any employees who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
select FIRST_NAME, LAST_NAME, HIRE_DATE
from EMPLOYEES
where HIRE_DATE between '1-1-2000' and '3-9-2007';

-- 6. Display country_id, country name, region id, region name from hr database
select COUNTRY_ID, COUNTRY_NAME, c.REGION_ID, REGION_NAME
from COUNTRIES c
         join REGIONS r on c.REGION_ID = r.REGION_ID;

-- 7. Display All cities, country names from hr database
select CITY, COUNTRY_NAME
from LOCATIONS l
         join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

-- 8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.
select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e
         join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID in (40, 80);

-- 9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e
         right join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


-- 10. Display the first name, last name, department number, and name, for all employees who have or have not any department
select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e
         left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 11. Display all employee and their manager's names
select e1.first_name||' '|| e1.last_name as "Employee Name", e2.first_name||' '||e2.last_name as "Manager Name"
from employees e1 join employees e2 on e1.manager_id=e2.employee_id;