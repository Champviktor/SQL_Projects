CREATE PROCEDURE [dbo].[AddEmployee]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@BirthDate DATE,
	@Sex NVARCHAR(10),
	@Salary INT,
	@BranchID INT

AS
BEGIN
	INSERT INTO Employee(FirstName, LastName, BirthDate, Sex, Salary, BranchID)
	VALUES(@FirstName, @LastName, @BirthDate, @Sex, @Salary, @BranchID)
END;
GO