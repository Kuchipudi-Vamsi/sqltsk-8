Stored Procedures and Functions:
🎯 Objective
To modularize SQL logic using stored procedures and stored functions, which helps in:

-->Reusing code
-->Improving readability
-->Reducing duplication
-->Separating logic from application code

Tools Used:
✅ MySQL Workbench
❌ SQLite is not supported for this task because it does not support stored procedures/functions.

What Was Done (Deliverables):
1. Created a Sample Table:
A simple employees table with fields like:
id, first_name, last_name, department, salary, and bonus
Inserted a few rows to work with.

2. Stored Procedure: GetEmployeesByDept
✅ Purpose:
To retrieve a list of employees from a given department.

✅ Syntax:
CREATE PROCEDURE GetEmployeesByDept(IN dept_name VARCHAR(50))
✅ How It Works:
Takes one input parameter: the department name.
Returns all employees from that department.

✅ Example Use:
CALL GetEmployeesByDept('Sales');
3. Stored Function: GetTotalSalary
✅ Purpose:
To calculate total salary (base salary + bonus) for a given employee.

✅ Syntax:
CREATE FUNCTION GetTotalSalary(emp_id INT) RETURNS DECIMAL(10,2)
✅ How It Works:
Takes an employee ID as input.
Fetches their salary and bonus.
Adds them together and returns the result.

✅ Example Use:
SELECT GetTotalSalary(1) AS total_salary;
Key Concepts Practiced:
Concept	Explanation
CREATE PROCEDURE	Defines a block of SQL code that can be executed with CALL.
CREATE FUNCTION	Defines a SQL function that returns a single value.
Parameters (IN)	Allow you to pass input values into procedures or functions.
IFNULL()	Used to handle NULL values while calculating salary + bonus.
DELIMITER	Changes the default delimiter (;) so that procedure/function definitions can include semicolons.
CALL and SELECT	Used to invoke the procedure and function, respectively.

✅ Outcome
You now understand how to:
-->Write reusable SQL procedures to encapsulate logic
-->Write SQL functions that return values
-->Use input parameters and conditional handling.
