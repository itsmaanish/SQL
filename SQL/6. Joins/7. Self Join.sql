use Joins;

select * from emp;

select *
from emp e1
JOIN emp e2
ON e1.eid + 1 = e2.eid;