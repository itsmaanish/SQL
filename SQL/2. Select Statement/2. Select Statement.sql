select 
first_name,
birth_date,
age,
age+10 as Ages
from parks_and_recreation.employee_demographics;

# PEMDAS 

select first_name, age, (age+10)*10 as Ages
from parks_and_recreation.employee_demographics;

# DISTINCT

select distinct gender
from parks_and_recreation.employee_demographics;