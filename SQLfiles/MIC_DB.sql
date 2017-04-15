--Create DB
USE master
GO
ALTER DATABASE [msf-logistics-catalogue] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE IF EXISTS [msf-logistics-catalogue]
GO

CREATE DATABASE [msf-logistics-catalogue] ON 
	PRIMARY
	(
		NAME = 'msf-logistics-catalogue_Data', 
		FILENAME = 'D:\Database\msf-logistics-catalogue_Data.mdf', 
		SIZE = 50 MB, 
		FILEGROWTH = 10%
		
	)
LOG ON 
	(
		NAME = 'msf-logistics-catalogue_Log', 
		FILENAME = 'D:\Database\msf-logistics-catalogue_Log.ldf', 
		SIZE = 10 MB, 
		FILEGROWTH = 10%
		
	)
	GO

USE [msf-logistics-catalogue]
GO

--Create Tables
CREATE TABLE Supplier (
		SupplierId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		SupplierName nVarchar(255) NOT NULL,
		--InsertAddresshere
		ContactPerson nVarchar(255) NOT NULL,
		--TODO:fler kontakt-person-uppgifter
		Website nVarchar(255),
		SupplierDescription nVarchar(1000),
		bActive bit NOT NULL default 1
	) ON [PRIMARY]

CREATE TABLE ProductCategory ( --Shelters, Vehicles etc..
		ProductCategoryId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ProductCategory nVarchar(255) NOT NULL,
		bActive bit NOT NULL default 1
	) ON [PRIMARY]
GO

CREATE TABLE ProductType ( --f�r shelters: transitional, basic warehouse etc..?
		ProductTypeId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ProductCategoryId int NOT NULL FOREIGN KEY REFERENCES ProductCategory(ProductCategoryId),
		ProductType nVarchar(255) NOT NULL,
		bActive bit NOT NULL default 1
	) ON [PRIMARY]
GO

CREATE TABLE Product (
		ProductId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ProductTypeId int NOT NULL FOREIGN KEY REFERENCES ProductType(ProductTypeId),
		SupplierId int NOT NULL FOREIGN KEY REFERENCES Supplier(SupplierId),
		ProductName nVarchar(255) NOT NULL,
		ProductMetaData xml, --F�r att ha "filtrerings data" 
		DateCreated datetime NOT NULL default GETDATE(),
		bActive bit NOT NULL default 1
	)ON [PRIMARY]
GO

CREATE TABLE ProductData (
		ProductDataId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ProductId int NOT NULL FOREIGN KEY REFERENCES Product(ProductId),
		ProductData xml NOT NULL, --t�nkte att denna kunde vara en nVarchar, beh�ver inte s�kas/filtreras p�?
		DateCreated datetime NOT NULL default GETDATE(),
		CreatedBy Date,--f�r att se vem som lagt in/uppdaterat produkten
		ApprovedBy nVarchar(10),--f�r att se vem som godk�nt uppdateringen
		ApprovedDate Date,--n�r godk�ndes den.
		bActive bit NOT NULL default 1
	)ON [PRIMARY]
GO

CREATE TABLE ValidationInterval (
		ValidationIntervalId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ValidationInterval nVarchar(255) NOT NULL,
		SortOrder int, --vilken ordning det ska visas i.(beh�vs?)
		bActive bit NOT NULL default 1
	)ON [PRIMARY]

CREATE TABLE ProductTypeValidationInterval (
		ProductTypeValidationIntervalId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ProductTypeValidationInterval nVarchar(255) NOT NULL,
		SortOrder int, --vilken ordning det ska visas i.(beh�vs detta?)
		ProductTypeId int NOT NULL FOREIGN KEY REFERENCES ProductType(ProductTypeId),
		ValidationIntervalId int NOT NULL FOREIGN KEY REFERENCES ValidationInterval(ValidationIntervalId),
		bActive bit NOT NULL default 1
	)ON [PRIMARY]

CREATE TABLE ProductValidation (
		ProductValidationId int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED,
		ProductValidation xml NOT NULL,
		ProductId int FOREIGN KEY REFERENCES Product(ProductId),
		ValidationIntervalId int NOT NULL FOREIGN KEY REFERENCES ValidationInterval(ValidationIntervalId),
		ProductValidationRating xml, --F�r sammanr�knade "po�ng" p� rating. Inte helt 100 p� hur detta ska vara.
		CreatedBy nVarchar(10),
		CreatedDate Date,
		Completed bit NOT NULL default 0,
		ApprovedBy nVarchar(10),--f�r att se vem som godk�nt uppdateringen
		ApprovedDate Date,--n�r godk�ndes den.
		bActive bit NOT NULL default 1
	)ON [PRIMARY]




--Inserts
INSERT INTO ProductCategory (ProductCategory)
		VALUES ('Shelters'), ('Vehicles')
GO

INSERT INTO Supplier(SupplierName, SupplierDescription, ContactPerson, Website)
		VALUES('Shelter Inc', 'Tenta Jansson', 'www.tj.se','TentsandCents'),
				('T�lter Inc', 'Kal P Dahl', 'www.jo.se', 't�ltmakare'),
				('V�lter in', 'Trazan Apanson', 'www.djungel.nu', 'liansvingare')
GO

INSERT INTO ProductType(ProductCategoryId, ProductType)
		VALUES	(1, 'Basic'),
				(1, 'Transitional'),
				(1, 'Warehouse'),
				(1, 'Prefabricated')
GO
		
