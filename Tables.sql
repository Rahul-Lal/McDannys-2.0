USE master;
GO

CREATE DATABASE PrototypeMcDannys;

USE PrototypeMcDannys;
GO

CREATE TABLE Categories
(
	ID INT IDENTITY NOT NULL,
	[Name] VARCHAR(13) NOT NULL,
	[Description] VARCHAR(50) NULL
);

CREATE TABLE Products
(
	ID INT IDENTITY NOT NULL,
	[Name] VARCHAR(13) NOT NULL,
	[Description] VARCHAR(50) NULL,
	Cost MONEY NOT NULL,
	CategoryID INT NOT NULL
);

CREATE TABLE Combos
(
	ID INT IDENTITY NOT NULL,
	[Name] VARCHAR(13) NOT NULL,
	[Description] VARCHAR(50) NULL,
	Cost MONEY NOT NULL
);

CREATE TABLE [Products-To-Order]
(
	ID INT IDENTITY NOT NULL,
	ProductID INT NOT NULL,
	OrderID INT NOT NULL,
	Quantity INT NOT NULL
);

CREATE TABLE [Product-To-Combo]
(
	ID INT IDENTITY NOT NULL,
	ProductID INT NOT NULL,
	ComboID INT NOT NULL,
	Quantity INT NOT NULL
);

CREATE TABLE [Combos-To-Order]
(
	ID INT IDENTITY NOT NULL,
	ComboID INT NOT NULL,
	OrderID INT NOT NULL,
	Quantity INT NOT NULL
);

CREATE TABLE Orders
(
	ID INT IDENTITY NOT NULL,
	DateOfOrder DATETIME NULL,
	Archive BIT
);