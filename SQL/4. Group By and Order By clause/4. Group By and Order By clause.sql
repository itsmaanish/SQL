# Group By

select gender, avg(age)
from employee_demographics
GROUP BY gender;

# Order By clause

select dept_id, max(salary) as Salary, count(salary)
from employee_salary
group by dept_id
order by Salary DESC;

select *
from employee_salary;