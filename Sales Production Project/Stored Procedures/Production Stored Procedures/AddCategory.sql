CREATE PROCEDURE [Production].[AddCategory]
	@CategoryName NVARCHAR(50)
AS
BEGIN
	INSERT INTO Production.Categories(CategoryName)
	VALUES(@CategoryName)
END;