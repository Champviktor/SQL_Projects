CREATE VIEW [Sales].[Order_Items_View]
	AS SELECT
	OrderID,
	ItemID,
	ProductID,
	Quantity

	FROM Sales.Order_Items
