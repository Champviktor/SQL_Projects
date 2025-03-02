CREATE VIEW [Sales].[Orders_View]
	AS SELECT 
	OrderID,
	CustomerID,
	OrderStatus,
	OrderDate,
	RequiredDate,
	ShippedDate
	
	FROM Sales.Orders
