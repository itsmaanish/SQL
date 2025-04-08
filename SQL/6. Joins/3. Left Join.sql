select e.eid, e.ename, ed.eage, ed.eAddress, ed.eSalary
from emp e
Left Join empDetails ed
ON(e.eid = ed.eid);