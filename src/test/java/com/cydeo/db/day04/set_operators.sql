select NAMES
from testers
union
select NAMES
from DEVELOPERS;

select NAMES
from testers
union all
select NAMES
from DEVELOPERS;

select NAMES
from testers
minus
select NAMES
from DEVELOPERS;

select NAMES
from testers
intersect
select NAMES
from DEVELOPERS;

-- How to find duplicate names in employees table
select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) > 1;

select NAMES from testers
intersect
select NAMES from DEVELOPERS;



