select first_name, last_name, 'Old Man' AS Label
from employee_demographics
where age > 40 AND gender = 'Male'
Union
select first_name, last_name, 'Old Lady' AS Label
from employee_demographics
where age > 40 AND gender = 'Female'
Union
select first_name, last_name, 'Highly Paid Employee' AS Label
from employee_salary
where salary  >70000;