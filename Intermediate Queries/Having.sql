/*
HAVING clause; always has to go after a GROUP BY 
*/

--SELECT Jobtitle, COUNT(Jobtitle)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE COUNT(Jobtitle) > 1 --this will not work, we cannot use a where with an aggregate 
--GROUP BY JobTitle

SELECT Jobtitle, COUNT(Jobtitle) as CountSal
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle--this will not work, we cannot use a where with an aggregate 
HAVING COUNT(Jobtitle) > 1

SELECT Jobtitle, AVG(Salary) as AvgSalary
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle--this will not work, we cannot use a where with an aggregate 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)
