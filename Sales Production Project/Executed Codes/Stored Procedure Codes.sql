/*--Adding a branch
EXEC Production.AddBrand 'Ekiti';


--Adding a category
EXEC Production.AddCategory 'Body Care';


--Adding a product
EXEC Production.AddProduct
@ProductName = 'Cream',
@BrandID = 1,
@CategoryID = 2,
@ModelYear = 2024;


--Adding a store
EXEC Sales.AddStore
@StoreName = 'Emmy Enterprises',
@Phone = '08062702658',
@Email = 'emmy@gmail.com',
@Street = 'Glorious',
@State = 'Delta State',
@ZipCode = 300135;


--Adding stock
EXEC Production.AddStock 
@StoreID = 1,
@ProductID = 2,
@Quantity = 1000;


--Adding a customer
EXEC Sales.AddCustomer
@FirstName = 'Divine',
@LastName = 'Dolapo',
@Phone = '09064704745',
@Email = 'divine@gmail.com',
@Street = 'Owodunni',
@City = 'Ibadan',
@State = 'Oyo',
@ZipCode = 200123;


--Adding a staff
EXEC Sales.AddStaff
@FirstName = 'Abel',
@LastName = 'Bolanle',
@Email = 'abel@gmail.com',
@Phone = '09141416324',
@Active = 0,
@StoreID = 1,
@ManagerID = 2;


--Adding an order
EXEC Sales.AddOrder 
@CustomerID = 1,
@OrderStatus = 'Not Shipped',
@OrderDate = '2005-12-02',
@RequiredDate = '2006-01-02',
@ShippedDate = '2005-12-10',
@StoreID = 1,
@StaffID = 2;


--Adding an item
EXEC Sales.AddOrder_Item
@OrderID = 2,
@ProductID = 1,
@Quantity = 140,
@ListPrice = 11000000,
@Discount = 15;


SELECT * FROM Production.Brands;
SELECT * FROM Production.Categories;
SELECT * FROM Production.Products;
SELECT * FROM Sales.Stores;
SELECT * FROM Production.Stocks;
SELECT * FROM Sales.Customers;
SELECT * FROM Sales.Staff;
SELECT * FROM Sales.Order_Items;
SELECT * FROM Sales.Staff;



--Select the current identity 
SELECT IDENT_CURRENT('Production.Brands');

--Checking identity information
DBCC CHECKIDENT('Production.Brands');

*/