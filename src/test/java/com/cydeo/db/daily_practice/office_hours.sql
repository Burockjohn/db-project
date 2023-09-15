select *
from employees
where salary < (select avg(salary) from employees);

-- 3. get me those departments whose employees more than department 80
select *
from DEPARTMENTS;
select DEPARTMENT_ID
from EMPLOYEES
group by DEPARTMENT_ID
having count(DEPARTMENT_ID) > (select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID = 80);

-- 4. get me those employees who is older than any IT programmer in the company
select *
from EMPLOYEES;
select min(HIRE_DATE)
from EMPLOYEES
where JOB_ID = 'IT_PROG';
select *
from EMPLOYEES
where HIRE_DATE < (select min(HIRE_DATE) from EMPLOYEES where JOB_ID = 'IT_PROG');

-- 5. get me first name and department name in same table
select FIRST_NAME, department_name
from EMPLOYEES e
         join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 6. get me job id and manager id in one table
select J.JOB_ID, MANAGER_ID
from EMPLOYEES e
         join JOBS J on e.JOB_ID = J.JOB_ID;

-- 7. get me department names and end date( if any employee quit)

--8. get me job id and job title together
select e.JOB_ID, JOB_TITLE
from EMPLOYEES e
         left join JOBS J on J.JOB_ID = e.JOB_ID;

-- 9. get me first name who left the company
select FIRST_NAME, END_DATE
from EMPLOYEES e
         right join JOB_HISTORY j on e.EMPLOYEE_ID = j.EMPLOYEE_ID;

-- 10. get me first name and job title for those whose salary is equal to max salary of that job  title
select FIRST_NAME, JOB_TITLE, MAX_SALARY, SALARY
from EMPLOYEES e
         right join JOBS J on e.SALARY = J.MAX_SALARY;

--11.get me department name, city in same table
select DEPARTMENT_NAME, CITY
from DEPARTMENTS d
         join LOCATIONS l on l.LOCATION_ID = d.LOCATION_ID;

--12. get me first name , start date, end date in same table
select FIRST_NAME, START_DATE, END_DATE
from EMPLOYEES e
         join JOB_HISTORY J on e.JOB_ID = j.JOB_ID;

--13. create a table name laptops, with id, brand, color, price
create table Laptops
(
    product_id INTEGER primary key,
    brand      varchar(30) not null,
    color      varchar(30) not null,
    price      INTEGER     not null
);

--14. create table phones with id, brand, color, price
create table Phones
(
    product_id INTEGER primary key,
    brand      varchar(30) not null,
    color      varchar(30) not null,
    price      INTEGER     not null
);


-- 15. insert laptops table belwo values
-- 1. (c)
-- 2. (2, 'msi', 'grey', 1300)
-- 3. (3, 'dell', 'black', 1600)
-- 4. (4, 'hp', 'white', 1300)
-- 5. (5, 'macbook', 'white', 1800)

insert into Laptops(product_id, brand, color, price)
values (1, 'hp', 'black', 1500);

insert into Laptops(product_id, brand, color, price)
values (2, 'msi', 'grey', 1300);

insert into Laptops(product_id, brand, color, price)
values (3, 'dell', 'black', 1600);

insert into Laptops(product_id, brand, color, price)
values (4, 'hp', 'white', 1300);

insert into Laptops(product_id, brand, color, price)
values (5, 'macbook', 'white', 1800);



-- 16. insert phones table belwo values
-- -- 1. (1, 'samsung' , 'black', 700)
-- -- 2. (2, 'dell', 'grey', 1000)
-- -- 3. (3, 'msi', 'black', 800)
-- -- 4. (4, 'iphone', 'white', 1100)

insert into Phones(product_id, brand, color, price)
values (1, 'samsung', 'black', 700);

insert into Phones(product_id, brand, color, price)
values (2, 'dell', 'grey', 1000);

insert into Phones(product_id, brand, color, price)
values (3, 'msi', 'black', 800);

insert into Phones(product_id, brand, color, price)
values (4, 'iphone', 'white', 1100);

select *
from Laptops;
select *
from Phones;

--17. update dell price to 1500
update Laptops
set price = 1500
where brand = 'dell';

-- 18. delete macbook from laptops table
delete
from Laptops
where brand = 'macbook';

-- 19. combine all brand names in one table( from laptops and phones)
select brand from Laptops union all select brand from Phones;

-- 20. combine unique brand names in one table
select brand from Laptops union select brand from Phones;

--21. get me unique prices and sort them
select price from Laptops union select price from Phones order by price;

--22. get me common colors for phones and laptops
select color from Laptops intersect select color from Phones;

--23. get me the colors only laptops have
select color from Laptops minus select color from Phones;

--24. get me the brands only phones have
select brand from Phones minus select brand from Laptops;