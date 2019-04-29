DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  itemID MEDIUMINT AUTO_INCREMENT NOT NULL,
  productName VARCHAR(45) NOT NULL,
  departmentName VARCHAR(45) NOT NULL,
  price DECIMAL(10,2) NULL,
  stockQuantity INT NULL,
  PRIMARY KEY (itemID)
);


CREATE TABLE departments (
  departmentID MEDIUMINT AUTO_INCREMENT NOT NULL,
  departmentName VARCHAR(45) NOT NULL,
  overHeadCosts  DECIMAL(10,2) NOT NULL,
  productSales DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (departmentID)
);

INSERT INTO departments (departmentName, overHeadCosts, productSales)
VALUES	("office", 1500.00, 3000.00),
		("produce", 1000.00, 2000.00),
        ("electronics", 5000.00, 6000.00),
        ("toys", 2000.00, 5000.00),
        ("drinks", 1400.00, 1800.00),
        ("cleaning",1700.00, 4500.00);

INSERT INTO products (productName, departmentName, price, stockQuantity)
VALUES ("pencil","office", 2.50, 100),
		("pen","office", 1.50, 80),
		("green_apple","produce", 0.80, 50),
		("laptop", "electronics", 400.00, 5),
		("headphones","electronics", 120.00, 12),
		("banana","produce", 0.50, 75),
		("plane","toys", 34.00, 21),
		("transformer","toys",  15.00, 27),
		("windex","cleaning", 2.65, 100),
		("coke","drinks", 2.99, 60);


SELECT * FROM products;

SELECT * FROM departments;