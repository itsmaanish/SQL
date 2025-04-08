# Assignment Question
-- Offset the LEAD and LAG values by 2 in the output columns?

select * from test_data;

select new_id,
LEAD(new_id, 2) OVER(ORDER BY new_id) AS 'LEAD_by2',
LAG(new_id, 2) OVER(ORDER BY new_id) AS 'LAG_by2'

from test_data;