select * from empDetails;
select * from emp;

# In MySQL, Full Join doesn't work so we use UNION
-- select e.eid, e.eName, ed.eAge, ed.eAddress, ed.eSalary
-- FROM emp e
-- FULL JOIN empDetails ed
-- ON(e.eid = ed.eid);

Select e.eid, e.eName, ed.eAge, ed.eAddress, ed.eSalary
from emp e
Left Join empDetails ed
On(e.eid = ed.eid)

UNION

Select e.eid, e.eName, ed.eAge, ed.eAddress, ed.eSalary
from emp e
Right Join empDetails ed
On(e.eid = ed.eid);