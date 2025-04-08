use parks_and_recreation;

select * from employee_demographics;


WITH my_cte AS
(
select gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, Count(salary) count_sal
from employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
select AVG(avg_sal)
from my_cte;













