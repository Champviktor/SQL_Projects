CREATE PROCEDURE [dbo].[GetEmployeeByBranchID]
@BranchID INT
AS
BEGIN
	SELECT
		E.EmployeeID, 
        E.FirstName, 
        E.LastName, 
        E.BirthDate, 
        E.Sex, 
        E.Salary,
		B.BranchID,
		B.BranchName,
		B.ManagerID

	FROM Employee E
	INNER JOIN Branch B ON E.BranchID = B.BranchID
	WHERE B.BranchID = @BranchID --E.BranchID = @BranchID for some cases
END;
GO