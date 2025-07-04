
-- Step 1: Setup Sample Table
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (first_name, last_name, department, salary, bonus) VALUES
('John', 'Doe', 'Sales', 50000, 5000),
('Jane', 'Smith', 'IT', 60000, NULL),
('Alice', 'Brown', 'Sales', 55000, 2000),
('Bob', 'White', 'HR', 45000, 3000);

-- Step 2: Create Stored Procedure
DELIMITER //

CREATE PROCEDURE GetEmployeesByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT first_name, last_name 
    FROM employees 
    WHERE department = dept_name;
END //

DELIMITER ;

-- Step 3: Call the Stored Procedure
-- CALL GetEmployeesByDept('Sales');

-- Step 4: Create Stored Function
DELIMITER //

CREATE FUNCTION GetTotalSalary(emp_id INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT salary + IFNULL(bonus, 0) INTO total FROM employees WHERE id = emp_id;
    RETURN total;
END //

DELIMITER ;

-- Step 5: Use the Stored Function
-- SELECT GetTotalSalary(1) AS total_salary;
