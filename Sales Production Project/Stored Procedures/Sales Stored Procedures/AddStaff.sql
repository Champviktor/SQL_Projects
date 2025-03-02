CREATE PROCEDURE [Sales].[AddStaff]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Email NVARCHAR(50),
	@Phone NVARCHAR(15),
	@Active BIT,
	@StoreID INT,
	@ManagerID INT
AS
BEGIN
	INSERT INTO Sales.Staff (FirstName, LastName, Email, Phone, Active, StoreID, ManagerID)
	VALUES (@FirstName, @LastName, @Email, @Phone, @Active, @StoreID, @ManagerID)

END