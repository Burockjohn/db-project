select *
from CUSTOMER;

select *
from ADDRESS;

--inner join
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c
         join ADDRESS a
              on c.ADDRESS_ID = a.ADDRESS_ID;

--left (outer) join
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c
         left join ADDRESS a
                   on c.ADDRESS_ID = a.ADDRESS_ID;

--left (outer) join with where
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c
         left join ADDRESS a
                   on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null;

--right (outer) join
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c
         right join ADDRESS a
                    on c.ADDRESS_ID = a.ADDRESS_ID;

--full (outer) join
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c
         full join ADDRESS a
                   on c.ADDRESS_ID = a.ADDRESS_ID;

--full (outer) join with where
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c
         full join ADDRESS a
                   on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null
   or a.ADDRESS_ID is null;