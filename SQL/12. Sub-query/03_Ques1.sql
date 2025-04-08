# Question 1
-- Find the details of the customers, whose payment amount is more than the average of total amount paid by all customers
# Note
-- Divide above question into 2 parts:
-- 1. Find the average amount
-- 2. Filter the customers whose  amount > average amount

select * from customers;


select * 
from customers
where amount >
(Select AVG(amount)
from customers);