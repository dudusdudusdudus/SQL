USE MS_70461
GO

ALTER TABLE Employees
	ADD
		ActiveFlag bit NOT NULL,
		ModifiedDate datetime NOT NULL

ALTER TABLE Products
	ALTER COLUMN Price money NOT NULL

ALTER TABLE Employees
	DROP COLUMN TempId

--Changing table name
EXEC sp_rename 'Employees', 'EmployeesXXXX'


--Changing table name
EXEC sp_rename 'dbo.Products.DiscontinuedFalg', 'DiscontinuedFlag', 'COLUMN';
 GO


		