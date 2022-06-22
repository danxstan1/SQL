/*
Subqueries (in the Select, From and Where Statement)
-Queries within queries
-Used to return data that will be used in the main query as a condition to specify data we want retrieve

*/

Select *
From EmployeeSalary

-- Subquery in Select
SELECT EmployeeID, Salary, (Select AVG(Salary) FROM EmployeeSalary) as AllAvgSalary -- Select subquries can only have a single value / column as an output
FROM EmployeeSalary


-- How to do it with Partition By

SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
FROM EmployeeSalary

-- Why Group By doesnt work

SELECT EmployeeID, Salary, AVG(Salary) as AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2

-- Subquery in From (tend to be slower in comparison to temp tables, CTE's)

SELECT a.EmployeeID, AllAvgSalary
FROM (
SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
FROM EmployeeSalary
) as a


-- Subquery in Where

SELECT EmployeeID, Salary, JobTitle
FROM EmployeeSalary
WHERE EmployeeID in (
SELECT EmployeeID -- we can only specify one column in a where statement
FROM EmployeeDemographics
WHERE Age > 30)