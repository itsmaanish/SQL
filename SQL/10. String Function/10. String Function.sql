# String Function

select * from emp;

-- Length
SELECT eName, length('ename') as Length
from emp; 

-- Upper
Select upper('sky');

SELECT eName, upper(ename) as Length
from emp; 

-- Lower
Select lower('sky');

-- Reverse
select reverse('India');

-- Trim() -> Remove space from both the side
-- LTRIM() -> It Remove space from Left Side
-- RTRIM() -> It Remove space from Right Side

Select Trim(' Hello World') as name;


-- LEFT(ColName, value)
select eName, LEFT(ENAME, 2)
 from emp;
 
 -- Right(ColName, value)
select eName, RIGHT(ENAME, 2)
 from emp;
 
 -- SUBSTRING(ColName, Idx, Move)
 
 select ename, SUBSTRING(ENAME, 3,2) 
 from emp;
 













