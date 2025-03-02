CREATE PROCEDURE [Production].[AddBrand]
	@BrandName NVARCHAR(50)
AS
BEGIN
	INSERT INTO Production.Brands(BrandName)
	VALUES(@BrandName)

END;