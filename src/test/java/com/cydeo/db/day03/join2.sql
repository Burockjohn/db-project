select *
from EMPLOYEES;

select *
from DEPARTMENTS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e
         left join DEPARTMENTS d
                   on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, c.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER c
         left outer join ADDRESS a
                         on c.ADDRESS_ID = a.ADDRESS_ID
where a.ADDRESS_ID is NULL;

select *
from CUSTOMER
         full join ADDRESS
                   on customer.ADDRESS_ID = address.ADDRESS_ID
where customer.ADDRESS_ID is null
   or address.ADDRESS_ID is null;
