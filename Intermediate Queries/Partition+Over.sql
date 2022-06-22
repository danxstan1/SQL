/*
Partition By
*/

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (Partition by Gender) as TotalGender
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
PARTITION BY + OVER clause allows:
All records in the table to be outputted
It gives aggregated columns with each record in the specified table
Allows you to specify the column on which we need to perform aggregation

Compared to GROUP BY, when you get an error message if trying to add a column that is not part of the GROUP BY clause
*/

SELECT Gender,  COUNT(Gender) -- would be the only way to get the same information as above
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY Gender


SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

-- -- is grouping based on multiple attributes so wouldnt provide a detailed output
