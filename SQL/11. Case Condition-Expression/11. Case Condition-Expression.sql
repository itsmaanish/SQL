# CASE Expression or CASE Condition
# 1>. CASE Syntax
# 2>. CASE Expression Syntax

# 1>. CASE Syntax
-- The CASE statement is used to check conditions and return a value based on which condition is true. ( if-else )
-- If there is no ELSE part and no conditions are true, it return NULL. 
-- Syntax --> CASE, WHEN, THEN, ELSE, END
--         CASE
--            WHEN condition1 THEN result1
--            WHEN condition2 THEN result2
--            WHEN conditionN THEN resultN
--         ELSE OTHER_RESULT
--         END;

SELECT * FROM empdetails;

SELECT eid, esalary,
  CASE
	WHEN esalary > 3000 THEN 'Expensive Product'
	WHEN esalary = 2823.90 THEN 'Moderate Product'
    ELSE 'Inexpensive Product'
  END AS ProductStatus
from empdetails;


# 2>. CASE Expression Syntax
-- Syntax --> CASE EXPRESSION, WHEN, THEN, ELSE, END
--         CASE EXPRESSION
--            WHEN Value1 THEN result1
--            WHEN Value2 THEN result2
--            WHEN ValueN THEN resultN
--         ELSE OTHER_RESULT
--         END;

SELECT * FROM empdetails;

Select eid, eSalary,
CASE esalary
	WHEN 5433.90 THEN 'Prime Customer'
	WHEN 2923.90 THEN 'Plus Customer'
ELSE 'Regular Customer'
END AS CustomerStatus
from empdetails;