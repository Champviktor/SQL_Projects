CREATE PROCEDURE [Sales].[AddStore]
	@StoreName NVARCHAR(50),
	@Phone NVARCHAR(15),
	@Email NVARCHAR(255),
	@Street NVARCHAR(255),
	@State NVARCHAR(50),
	@ZipCode INT
AS
BEGIN
	INSERT INTO Sales.Stores(StoreName, Phone, Email, Street, [State], ZipCode)
	VALUES(@StoreName, @Phone, @Email, @Street, @State, @ZipCode)
END;