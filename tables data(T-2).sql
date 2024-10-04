-- Querying Data

-- Get all employees and their department names:
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 2.Get employees' full details including their job positions and salaries:
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, j.PositionTitle, s.SalaryAmount
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN JobPositions j ON e.JobPositionID = j.JobPositionID
JOIN Salaries s ON e.EmployeeID = s.EmployeeID;


-- 3.Find the highest salary in each department:

SELECT d.DepartmentName, MAX(s.SalaryAmount) AS HighestSalary
FROM Salaries s
JOIN Employees e ON s.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;

-- 4.Get all employees who have a salary greater than a specific amount:
SELECT e.EmployeeID, e.FirstName, e.LastName, s.SalaryAmount
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE s.SalaryAmount > 75000;

-- 5.Get the average salary for each job position:

SELECT j.PositionTitle, AVG(s.SalaryAmount) AS AverageSalary
FROM Salaries s
JOIN Employees e ON s.EmployeeID = e.EmployeeID
JOIN JobPositions j ON e.JobPositionID = j.JobPositionID
GROUP BY j.PositionTitle;

-- These tables and queries provide a robust framework for managing and querying employee records in a relational database
