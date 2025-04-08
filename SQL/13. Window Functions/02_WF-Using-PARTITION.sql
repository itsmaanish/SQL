select * from test_data;

select new_id, new_Category,
SUM(new_id) OVER(PARTITION BY new_Category ORDER BY new_id) AS "Total",
AVG(new_id) OVER(PARTITION BY new_Category ORDER BY new_id) AS "AVG",
COUNT(new_id) OVER(PARTITION BY new_Category ORDER BY new_id) AS "Count",
MIN(new_id) OVER(PARTITION BY new_Category ORDER BY new_id) AS "Min",
MAX(new_id) OVER(PARTITION BY new_Category ORDER BY new_id) AS "Max"

from test_data;
