/*
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional),
        colName3 DataType Constraints,
        ...
    );
*/

create table ScrumTeam
(
    Emp_ID    INTEGER primary key,
    FirstName varchar(30) not null,
    LastName  varchar(30),
    JobTitle  varchar(20)
);

select *
from ScrumTeam;


/*
 INSERT INTO TableName(column1, column2, ...)
 VALUES (value1, value2, ...);
*/

insert into ScrumTeam (emp_id, firstname, lastname, jobtitle)
values (1, 'Severus', 'Snape', 'Tester');

insert into ScrumTeam(emp_id, firstname, lastname, jobtitle)
values (2, 'Harold', 'Finch', 'Developer');

insert into ScrumTeam(emp_id, firstname, lastname, jobtitle)
values (3, 'Phoebe', 'Buffay', 'ScrumMaster');

insert into ScrumTeam(emp_id, firstname, lastname, jobtitle)
values (4, 'Micheal', 'Scofield', 'PO');

/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

update ScrumTeam
set JOBTITLE = 'Tester'
where EMP_ID = 4;

-- Delete from tha table
/*
 DELETE FROM table_name
WHERE condition;
 */

DELETE
from ScrumTeam
where EMP_ID = 3;

-- saving changes
commit;




