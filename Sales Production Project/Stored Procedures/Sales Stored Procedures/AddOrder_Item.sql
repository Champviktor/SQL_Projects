CREATE PROCEDURE [Sales].[AddOrder_Item]
	@OrderID INT,
	@ProductID INT,
	@Quantity INT,
	@ListPrice INT,
	@Discount INT
AS
BEGIN
	INSERT INTO Sales.Order_Items (OrderID, ProductID, Quantity, ListPrice, Discount)
	VALUES (@OrderID, @ProductID, @Quantity, @ListPrice, @Discount)

END