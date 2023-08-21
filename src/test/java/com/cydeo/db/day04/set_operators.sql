select NAMES from testers
union
select NAMES from DEVELOPERS;

select NAMES from testers
union all
select NAMES from DEVELOPERS;

select NAMES from testers
minus
select NAMES from DEVELOPERS;

select NAMES from testers
intersect
select NAMES from DEVELOPERS;



