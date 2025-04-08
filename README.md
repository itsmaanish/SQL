# 📚 SQL Learning Notes

## 🔐 SQL Credentials

- **Username**: `root`  
- **Password**: `admin`  
- **Port No**: `3306` or `3307`

---

## 📘 SQL Topics Breakdown

SQL is divided into 3 parts:

1. **Basic SQL**
2. **Intermediate SQL**
3. **Advanced SQL** *(Coming Soon)*

---

## 🧩 1. Basic SQL

### 🔧 Topics Covered

- SQL Installation  
- SELECT  
- PEMDAS  
- WHERE Clause + Comparison Operator + LIKE Operator  
- GROUP BY Clause + HAVING Clause  
- ORDER BY Clause  
- LIMIT and ALIAS

---

### ✴️ What is PEMDAS?

PEMDAS defines the order of operations in expressions.

- **P** – Parentheses  
- **E** – Exponents *(not common in SQL)*  
- **MD** – Multiplication and Division *(left to right)*  
- **AS** – Addition and Subtraction *(left to right)*

**Example**:  
```sql
(age + 10) * 10  
-- If age = 35 → (35 + 10) * 10 = 450

🔍 WHERE Clause
Used to filter data based on a condition.

SELECT * 
FROM employees 
WHERE age > 30;

Comparison Operators:

Symbol	Meaning
=	Equal to
>	Greater than
<	Less than
!= Not equal to
Logical Operators: AND, OR, NOT

Like statement:-
What is LIKE in SQL?
The LIKE keyword is used to search for a pattern in text.
It helps you find data that is similar to what you're looking for — not necessarily an exact match.

📌 Basic Syntax:

SELECT column_name
FROM table_name
WHERE column_name LIKE 'pattern';

🧩 Pattern Matching with Wildcards:
Wildcard Meaning	Example Pattern
% Any number of characters (0 or more)	
  'A%' → Starts with A
_ Exactly one character	
  'J_n' → Jan, Jon, etc.-

----------------------------------------------------------------------------------------------

Group By clause
GROUP BY groups rows that have the same values in a column.
It is usually used with aggregate functions like COUNT(), SUM(), AVG(), etc.

eg:-
select gender, avg(age)
from employee
GROUP BY gender;

-----------------------------------------------------------------------------------------------
Order By Clause

ORDER BY sorts the result either:
Ascending (ASC) – default
Descending (DESC)

eg:-
select dept_id, max(salary) as Salary, count(salary)
from employee_salary
group by dept_id
order by Salary DESC;

-------------------------------------------------------------------------------------------------

LIMIT and ALIAS

LIMIT:-
The LIMIT clause is used to show only a certain number of rows in the result.

eg:
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 3;


ALIAS:
ALIAS is used to give a temporary name to a column or table — to make results easier to read or write.

eg:
SELECT name, marks AS score
FROM students;

Ques:- find the 2nd maximum salary from emp
Soln-
      SELECT salary                                      SELECT salary  
      FROM emp                                           FROM emp
      ORDER BY salary DESC                 (OR)          ORDER BY salary DESC
      LIMIT 1 OFFSET 1;                                  LIMIT 1,1;

          

💡Explanation:
ORDER BY salary DESC → Sorts salaries from highest to lowest
LIMIT 1 → Take only 1 row
OFFSET 1 → Skip the first row (i.e., the highest salary)


************************************************************************************************************************************************************************************************************************************************************************************************************************

                                                       Intermediate SQL
1>. Joins:
 It is a process of combining multiple tables based on the related columns between them.
* Types of Joins:
   i). Inner Join
  ii). Cross Join
 iii). Outer Join
  iv). Natural Join
   v). Self Join
------------------------
  i). Inner Join:
       It retrieves the matching records from the both the tables.
       eg:-
            select e.eid, e.eName, ed.eAge, ed.eAddress, ed.eSalary
            from emp e
            INNER JOIN empDetails ed
            ON(e.eid = ed.eid);
 ii). Cross Join
iii). Outer Join --> Left, Right, Full Join
       > Left Join:
          It retrieves all rows from the left table, and the matching rows from the right table.
          If there's no match in the right table, it fills with NULLs.

