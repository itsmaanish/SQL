select * from emp;
select * from empDetails;

select e.eid, e.eName, ed.eAge, ed.eAddress, ed.eSalary
from emp e
Right Join empDetails ed
ON (e.eid = ed.eid);