CREATE PROCEDURE [Sales].[AddOrder]
	@CustomerID INT,
	@OrderStatus NVARCHAR(50),
	@OrderDate DATE,
	@RequiredDate DATE,
	@ShippedDate DATE,
	@StoreID INT,
	@StaffID INT

AS
BEGIN
	INSERT INTO Sales.Orders(CustomerID, OrderStatus, OrderDate, RequiredDate, ShippedDate, StoreID, StaffID)
	VALUES(@CustomerID, @OrderStatus, @OrderDate, @RequiredDate, @ShippedDate, @StoreID, @StaffID)
END;