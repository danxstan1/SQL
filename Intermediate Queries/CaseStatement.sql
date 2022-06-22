/*
CASE STATEMENT - Allows you to specify a condition and specify what should be returned when a condition is met
*/

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old' -- The very first condition that is met is going to be returned
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END -- Need to specify when CASE statement is done
From EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .5)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .1)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID