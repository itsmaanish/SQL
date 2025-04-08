# ANALYTIC Function

select * from test_data;

select new_id,
FIRST_VALUE(new_id) OVER(ORDER BY new_id) AS 'FIRST VALUE',  
LAST_VALUE(new_id) OVER(ORDER BY new_id) AS 'LAST VALUE', # we need to use ROWS for The LAST Value
LEAD(new_id) OVER(ORDER BY new_id) AS 'LEAD',
LAG(new_id) OVER(ORDER BY new_id) AS 'LAG'

from test_data;