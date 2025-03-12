CREATE PROCEDURE [dbo].[AddClient]
@ClientName NVARCHAR(50),
@BranchID INT
AS
BEGIN
	INSERT INTO Client(ClientName, BranchID)
	VALUES(@ClientName, @BranchID)
END;
GO