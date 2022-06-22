CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))

CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)

-- Inserting in 1st Table

INSERT INTO EmployeeDemographics VALUES
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

--Table 2 Insert:

Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

---------------------------------------------------------------
/*
SELECT STATEMENT

*, Top, Distinct, Count, As, Max, Min, Avg

*/


SELECT FirstName
FROM EmployeeDemographics

SELECT *
FROM EmployeeDemographics

SELECT DISTINCT Gender
from EmployeeDemographics

SELECT COUNT(LastName)
FROM EmployeeDemographics

SELECT MAX(Salary), MIN(Salary), AVG(Salary)
FROM EmployeeSalary

/*

WHERE STATEMENT

=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN

*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim' AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael') -- similar to an equal, where you can query for multiple conditions

-----------------------------------------
/* 
GROUP BY, ORDER BY
*/

SELECT *
FROM EmployeeDemographics
ORDER BY 1,2,3,4,5 -- can order by column position

SELECT Gender, Age, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
GROUP BY Gender, Age --cannot group by "derived fields" (fields not already in the table) e.g. agg function count, max, min etc. as those columns do not exist
ORDER BY CountGender --default is ascending, smallest to largest, A-Z 
