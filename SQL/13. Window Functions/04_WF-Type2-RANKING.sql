select * from test_data;

select new_id,
ROW_NUMBER() OVER(ORDER BY new_id) AS 'ROW_NUMBER',
RANK() OVER(ORDER BY new_id) AS 'RANK',
DENSE_RANK() OVER(ORDER BY new_id) AS 'DENSE RANK',
PERCENT_RANK() OVER(ORDER BY new_id) AS 'PERCENT RANK'

from test_data;