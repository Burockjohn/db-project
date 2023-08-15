select *
from ScrumTeam;

--adding new column
alter table ScrumTeam
    add salary INTEGER;

--update existing employees salary
update ScrumTeam
SET salary = 100000
where EMP_ID = 1;

update ScrumTeam
SET salary = 90000
where EMP_ID = 2;

update ScrumTeam
SET salary = 120000
where EMP_ID = 4;

--rename the column
alter table ScrumTeam rename column salary to annual_salary;

--delete, drop column
alter table ScrumTeam
    drop column annual_salary;

--how to change table name?
alter table ScrumTeam rename to agileTeam;

commit;

-- truncate, if we want to delete all data from the table, but still keep the table structure, we use truncate
truncate table agileTeam;

-- if we want to delete the table and data together
drop table agileTeam;
