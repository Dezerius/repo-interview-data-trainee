-- Drop tables if they exist
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Tasks;

-- Create Employees table
CREATE TABLE Employee (
    EmployeeID INT,
    EmployeeName VARCHAR(100)
);

-- Create Projects table
CREATE TABLE Project (
    ProjectID INT,
    ProjectName VARCHAR(100)
);

-- Create Tasks table
CREATE TABLE Task (
    TaskID INT,
    TaskName VARCHAR(100),
    ProjectID INT,
    EmployeeID INT,
    DueDate DATE,
    Priority INT,
    Complexity INT
);

-- Insert data into Employees table
INSERT INTO Employee (EmployeeID, EmployeeName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve'),
(6, 'Frank');

-- Insert data into Project table
INSERT INTO Project (ProjectID, ProjectName) VALUES
(1, 'Project Alpha'),
(2, 'Project Beta'),
(3, 'Project Gamma'),
(4, 'Project Zero');

-- Insert data into Tasks table
INSERT INTO Task (TaskID, TaskName, ProjectID, EmployeeID, DueDate, Priority, Complexity) VALUES
(1, 'Clean Customer Data', 1, 1, DATEADD(day, -10, GETDATE()), 1, 5),
(2, 'Generate Sales Report', 1, 2, DATEADD(day, -5, GETDATE()), 2, 3),
(3, 'Analyze Survey Results', 2, 3, DATEADD(day, -20, GETDATE()), 1, 2),
(4, 'Prepare Presentation', 2, 4, DATEADD(day, 5, GETDATE()), 4, 4),
(5, 'Update Website Content', 3, 5, DATEADD(day, 15, GETDATE()), 5, 1),
(6, 'Optimize Database', 3, 1, DATEADD(day, -1, GETDATE()), 2, 3),
(7, 'Develop Marketing Plan', 1, 2, DATEADD(day, -3, GETDATE()), 2, 2),
(8, 'Conduct Market Research', 2, 3, DATEADD(day, -7, GETDATE()), 1, 4);