CREATE PROCEDURE [dbo].[AddManager]
	@ManagerName NVARCHAR(50)
AS
	BEGIN 
	INSERT INTO Manager (ManagerName)
	VALUES (@ManagerName)

END;
GO