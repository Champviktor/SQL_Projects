CREATE VIEW [Sales].[Customer_View]
	AS SELECT 
	CustomerID,
	FirstName,
	LastName,
	PhoneNumber,
	Email
	
	FROM [Sales].[Customers]