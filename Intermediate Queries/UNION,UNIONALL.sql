/*
UNION, UNION ALL 

join = concat columns, union = concat rows
*/

SELECT *
FROM EmployeeDemographics

Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

SELECT *
FROM WareHouseEmployeeDemographics

Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

SELECT * -- here we note that even though the data has identical columns, joining will attach the table to our already existing table
FROM EmployeeDemographics
full JOIN WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

-- compare this to a UNION

SELECT *
FROM EmployeeDemographics
UNION all -- shows all values, regardless of duplicate or not
SELECT *
FROM WareHouseEmployeeDemographics
ORDER BY EmployeeID

--ERROR WHEN DOING ABOVE Msg 205, Level 16, State 1, Line 39
--All queries combined using a UNION, INTERSECT or EXCEPT operator must have an equal number of expressions in their target lists.

