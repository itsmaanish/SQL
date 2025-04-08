-- Common Table Expression (CTE)
-- A CTE is a temporary result set (like a virtual table) that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement.
-- You define it once at the top of your query using the WITH keyword.

WITH my_cte AS(
	SELECT a,b,c
    FROM Table1)
    
SELECT a,c
FROM my_cte ;

-- --------------------------------------------------------------------

-- Syntax 2

WITH cte_name AS (
    SELECT column1, column2
    FROM table_name                 # --> CTE query
    WHERE condition
)
SELECT *
FROM cte_name;                      # --> Main query 

-- ----------------------------------------------------------------------

# Why Use CTE?
Makes queries easier to read.
Can be reused in multiple places in the same query.
Helps you break down complex queries step by step.
Can be used recursively (for tree-like data).
