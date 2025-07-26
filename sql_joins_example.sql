-- Create table: employees
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    dept_id INT
);

-- Create table: departments
CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

-- Insert data into employees table
INSERT INTO employees VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', NULL),
(4, 'David', 103);

-- Insert data into departments table
INSERT INTO departments VALUES
(101, 'HR'),
(102, 'Engineering'),
(104, 'Marketing');

-- 1. INNER JOIN: Only matching dept_id
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- 2. LEFT JOIN: All employees, even if no matching department
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- 3. RIGHT JOIN simulation using LEFT JOIN (swap table order)
SELECT d.dept_id, d.dept_name, e.name
FROM departments d
LEFT JOIN employees e ON e.dept_id = d.dept_id;

-- 4. FULL OUTER JOIN simulation using UNION
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id

UNION

SELECT e.emp_id, e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;
