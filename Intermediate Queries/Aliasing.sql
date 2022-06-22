/*
Aliasing
*/

SELECT FirstName AS Fname -- can also remove 'AS'
FROM EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM EmployeeDemographics

SELECT AVG(Age) as AvgAge
FROM EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary -- can also remove 'AS'
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID