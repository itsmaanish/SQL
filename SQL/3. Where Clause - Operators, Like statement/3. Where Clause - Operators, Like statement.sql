# Where Clause  Employee_salary

select *
from employee_salary;

select *
from employee_salary
where first_name = 'Leslie';

select *
from employee_salary
where salary >= 50000;

select *
from employee_salary
where salary <= 50000;

select *
from employee_salary
where dept_id != 1;

select *
from employee_demographics
where birth_date > '1985-07-26';

-- LOGICAL OPERATORS --> (AND, OR, NOT) 

select *
from employee_demographics
where first_name = 'Leslie' AND age = 44;

select *
from employee_demographics
where age = 44 OR birth_date > '1980-01-01';

select *
from employee_demographics
where NOT birth_date > '1980-01-01';

# LIKE STATEMENT

select *
from employee_demographics
where first_name LIKE 'a%'; 

select *
from employee_demographics
where first_name LIKE '%a%'; 

select *
from employee_demographics
where first_name LIKE 'a__%'; 

select *
from employee_demographics
where first_name LIKE 'a__'; 

select *
from employee_demographics
where birth_date LIKE '1983%'; 
