CREATE PROCEDURE [dbo].[GetAllEmployees]

AS
BEGIN
	SELECT 
		E.EmployeeID, 
        E.FirstName, 
        E.LastName, 
        E.BirthDate, 
        E.Sex, 
        E.Salary,
		E.BranchID

    FROM Employee E
    INNER JOIN Branch B ON E.BranchID = B.BranchID

END;
GO