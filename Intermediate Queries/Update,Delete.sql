/*
Updating/Deleting Data
*/

SELECT *
FROM EmployeeDemographics

UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1004

INSERT EmployeeDemographics
VALUES (1004, 'Angela', 'Martin', 31, 'Female')
