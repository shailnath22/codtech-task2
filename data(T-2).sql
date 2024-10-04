--Creating employee record
create database EMPLOYEE_MANAGEMENT_SYSTEM;
use EMPLOYEE_MANAGEMENT_SYSTEM;


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- Insert into Departments
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES (1, 'Human Resources'),
                                                             (2, 'Finance'),
                                                            (3, 'Engineering');

CREATE TABLE JobPositions (
    JobPositionID INT PRIMARY KEY,
    PositionTitle VARCHAR(100) NOT NULL UNIQUE
);
-- Insert into JobPositions
INSERT INTO JobPositions (JobPositionID, PositionTitle) VALUES (1, 'Manager'),
                                                               (2, 'Analyst'),
                                                               (3, 'Developer');

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    DepartmentID INT,
    JobPositionID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (JobPositionID) REFERENCES JobPositions(JobPositionID)
);
-- Insert into Employees
INSERT INTO Employees (EmployeeID, FirstName, LastName, DateOfBirth, DepartmentID, JobPositionID)
VALUES (1, 'John', 'Doe', '1980-01-01', 1, 1),
       (2, 'Jane', 'Smith', '1990-02-02', 2, 2),
       (3, 'Alice', 'Johnson', '1985-03-03', 3, 3);

CREATE TABLE Salaries (
    EmployeeID INT PRIMARY KEY,
    SalaryAmount DECIMAL(10,2) NOT NULL,
    EffectiveDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
-- Insert into Salaries
INSERT INTO Salaries (EmployeeID, SalaryAmount, EffectiveDate)
VALUES (1, 70000, '2023-01-01'),
   (2, 60000, '2023-01-01'),
   (3, 80000, '2023-01-01');
