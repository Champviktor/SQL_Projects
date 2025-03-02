CREATE PROCEDURE [Sales].[AddCustomer]
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Phone NVARCHAR(15),
    @Email NVARCHAR(255),
    @Street NVARCHAR(255),
    @City NVARCHAR(50),
    @State NVARCHAR(50),      
    @ZipCode INT  
AS
BEGIN
    INSERT INTO Sales.Customers (FirstName, LastName, Phone, Email, Street, City, [State], ZipCode)
    VALUES (@FirstName, @LastName, @Phone, @Email, @Street, @City, @State, @ZipCode)
    
END;