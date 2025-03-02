CREATE PROCEDURE [Production].[AddStock]
	@StoreID INT,
	@ProductID INT,
	@Quantity INT 
AS
BEGIN
	INSERT INTO Production.Stocks(StoreID, ProductID, Quantity)
	VALUES(@StoreID, @ProductID, @Quantity);
END;