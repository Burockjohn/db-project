-- 1. Create a table called Address
-- Columns :
-- 1. address_id: Must be Unique and cannot be null
-- 2. address: Cannot be null
-- 3. Phone: Cannot be null

create table ADDRESS
(
    address_id INTEGER primary key,
    address    varchar(100) not null,
    phone      INTEGER      not null
);

insert into ADDRESS(address_id, address, phone)
values (5, '1913 Hanoi Way', 28303384);
insert into ADDRESS(address_id, address, phone)
values (7, '692 Joliet Street', 44847719);
insert into ADDRESS(address_id, address, phone)
values (8, '1566 Inegl Manor', 70581400);
insert into ADDRESS(address_id, address, phone)
values (10, '1795 Santiago', 86045262);
insert into ADDRESS(address_id, address, phone)
values (11, '900 Santiago', 16571220);


-- 2. Create a table called Customers
-- Columns:
-- 1. Customer_Id: Must be Unique and cannot be null
-- 2. FirstName: cannot be null
-- 3. LastName: cannot be null
-- 4. Address_Id: is Address table' primary key


create table CUSTOMER
(
    Customer_id INTEGER primary key,
    FirstName   varchar(30) not null,
    LastName    varchar(30) not null,
    address_id  Integer references ADDRESS (address_id)
);

insert into CUSTOMER(customer_id, firstname, lastname, address_id) values (1,'Mary', 'Smith', 5);
insert into CUSTOMER(customer_id, firstname, lastname, address_id) values (2,'Patricia', 'Johnson', null);
insert into CUSTOMER(customer_id, firstname, lastname, address_id) values (3,'Linda', 'Williams', 7);
insert into CUSTOMER(customer_id, firstname, lastname, address_id) values (4,'Barbara', 'Jones', 8);
insert into CUSTOMER(customer_id, firstname, lastname, address_id) values (5,'Elizabeth', 'Brown', null);

commit work;

select * from ADDRESS;
select * from CUSTOMER;




