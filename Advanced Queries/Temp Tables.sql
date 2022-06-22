/*

Temp Tables
- Can query off temp tables multiple times, unlike CTE's / subqueries
- temp tables are session or query window specific. If you close your current session the table will not be there as you expect a regular table would

*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES(
'1001','HR','45000')

INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial]..EmployeeSalary


DROP TABLE IF EXISTS #temp_Employee2 -- allows the individual to run the procedure numerous times, if not, you get an error message "temp_employee2 already exists"
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2