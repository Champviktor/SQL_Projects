﻿CREATE TABLE [Production].[Stocks]
(
	StoreID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL
	PRIMARY KEY(StoreID, ProductID)
	CONSTRAINT FK_Stocks_StoreID FOREIGN KEY(StoreID) REFERENCES Sales.Stores(StoreID)
	ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_Stocks_ProductID FOREIGN KEY(ProductID) REFERENCES Production.Products(ProductID)
	ON DELETE NO ACTION ON UPDATE NO ACTION
);