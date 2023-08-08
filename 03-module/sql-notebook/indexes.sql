drop database ytdb;

create database ytdb;

use ytdb;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),
    Birthdate DATE
);

create index idx_LastName on Customers(LastName);

show index from Customers;

show index from Orders;

create index idx_cst_ord_dt on Orders(CustomerID, OrderID);

show index from Orders;

SELECT * FROM Customers WHERE LastName = 'Smith';