/*
CTE (Common Table Expression)
- a named temporary result set, used to manipulate complex subquery data
- also referred to as with statements
- also created into memory
*/

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(gender) over (partition by gender) as TotalGender,
AVG(salary) over (partition by gender) as AvgSalary
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT * -- Select statement needs to be directly under the CTE otherwise it wont be detected.
FROM CTE_Employee