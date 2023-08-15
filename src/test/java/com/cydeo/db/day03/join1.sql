select *
from CUSTOMER;

select *
from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER c join ADDRESS a
              on c.ADDRESS_ID = a.ADDRESS_ID;