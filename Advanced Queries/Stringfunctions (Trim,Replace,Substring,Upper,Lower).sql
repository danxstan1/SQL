/*

String functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop table EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) IDTRIM -- TRIM removes blank spaces on either left & right side
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) IDTRIM -- TRIM removes blank spaces on left side, fixes #2
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) IDTRIM -- TRIM removes blank spaces on right side, fixes #3
FROM EmployeeErrors

-- Using replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed --1st argument is column which fix is located, 2nd argument is what needs to be replaced, 3rd argument is what is replacing 2nd
From EmployeeErrors

-- Using Substring

SELECT SUBSTRING(FirstName, 1, 3) --takes column first name, starts at very first letter/number, then go forward 3 spaces forward
FROM EmployeeErrors

SELECT err.FirstName,Substring(err.FirstName,1,3), dem.FirstName, SUBSTRING(dem.FirstName,1,3) 
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3) -- Fuzzy matching

/*
Rule of thumb for fuzzy matching

Do it on multiple attributes such as: Gender, LastName, AGE, DOB
*/

-- Using UPPER and LOWER

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors