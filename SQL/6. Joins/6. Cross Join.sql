select * from emp;

select * from empDetails;

select e.eid, e.eName, ed.eAge, ed.eAddress, ed.eSalary
from emp e
CROSS JOIN empDetails ed
Order by e.ename ASC;