CREATE PROCEDURE [Production].[AddProduct]
	@ProductName NVARCHAR(50),
	@BrandID INT,
	@CategoryID INT,
	@ModelYear INT
AS
BEGIN
	INSERT INTO Production.Products(ProductName, BrandID, CategoryID, ModelYear)
	VALUES(@ProductName, @BrandID, @CategoryID, @ModelYear)
END;