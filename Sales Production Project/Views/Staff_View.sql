CREATE VIEW [Sales].[Staff_View]
	AS SELECT
	StaffID,
	FirstName,
	LastName,
	Active,
	StoreID
	
	FROM [Sales].[Staff]