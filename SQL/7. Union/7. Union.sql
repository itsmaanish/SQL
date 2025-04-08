use parks_and_recreation;

select * from employee_demographics;

select first_name, last_name
from employee_demographics
Union 
select first_name, last_name
from employee_demographics;