CREATE DATABASE Flipkart_Ecommerce;
USE Flipkart_Ecommerce;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) NOT NULL UNIQUE,
    Address VARCHAR(200) NOT NULL
);

-- 2. SELLER TABLE
CREATE TABLE Seller (
    Seller_ID INT PRIMARY KEY,
    Seller_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) NOT NULL UNIQUE,
    Business_Name VARCHAR(120) NOT NULL
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Seller_ID INT NOT NULL,
    Product_Name VARCHAR(150) NOT NULL,
    Category VARCHAR(80) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL);
    
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Status VARCHAR(30) NOT NULL
);

INSERT INTO Customer VALUES
(1,'Antony','antony@gmail.com','9876500001','Chennai, Tamil Nadu'),
(2,'Venkat','venkat@gmail.com','9876500002','Madurai, Tamil Nadu'),
(3,'Kavin Raj','kavin@gmail.com','9876500003','Coimbatore, Tamil Nadu'),
(4,'Dinesh Kumar','dinesh@gmail.com','9876500004','Tirunelveli, Tamil Nadu'),
(5,'Mari','meena@gmail.com','9876500005','Thoothukudi, Tamil Nadu'),
(6,'Vijay Anand','vijay@gmail.com','9876500006','Trichy, Tamil Nadu'),
(7,'Naveen R','naveen@gmail.com','9876500007','Salem, Tamil Nadu'),
(8,'Divya M','divya@gmail.com','9876500008','Erode, Tamil Nadu'),
(9,'Sanjay P','sanjay@gmail.com','9876500009','Vellore, Tamil Nadu'),
(10,'Harini K','harini@gmail.com','9876500010','Madurai, Tamil Nadu');

INSERT INTO Seller VALUES
(101,'Tech World','techworld@gmail.com','9000000001','Tech World Electronics'),
(102,'Mobile Hub','mobilehub@gmail.com','9000000002','Mobile Hub India'),
(103,'Home Store','homestore@gmail.com','9000000003','Home Store Online'),
(104,'Fashion Point','fashionpoint@gmail.com','9000000004','Fashion Point'),
(105,'Book House','bookhouse@gmail.com','9000000005','Book House India');

INSERT INTO Product VALUES
(201,101,'ASUS Vivobook 15','Laptops',45998.00,15,4.4),
(202,102,'Moto G45 5G','Mobiles',11999.00,30,4.3),
(203,101,'Wireless Mouse','Accessories',799.00,80,4.2),
(204,103,'Mixer Grinder','Home Appliances',2499.00,25,4.1),
(205,104,'Mens Casual Shirt','Fashion',999.00,50,4.0),
(206,105,'Java Programming Book','Books',699.00,40,4.6),
(207,102,'Bluetooth Earbuds','Audio',1499.00,45,4.2),
(208,103,'Electric Kettle','Home Appliances',1299.00,20,4.1),
(209,104,'Sports Shoes','Fashion',1999.00,35,4.3),
(210,101,'Mechanical Keyboard','Accessories',2999.00,18,4.5);

INSERT INTO Orders VALUES
(1001,1,'2026-09-01','Delivered',45998.00),
(1002,2,'2026-09-02','Shipped',1499.00),
(1003,3,'2026-09-03','Processing',5999.00),
(1004,4,'2026-09-04','Delivered',999.00),
(1005,5,'2026-09-05','Confirmed',1998.00),
(1006,6,'2026-09-06','Processing',699.00),
(1007,7,'2026-09-07','Shipped',1299.00),
(1008,8,'2026-09-08','Confirmed',2999.00),
(1009,9,'2026-09-09','Delivered',2499.00),
(1010,10,'2026-09-10','Processing',1999.00);

SELECT * FROM Customer;
SELECT * FROM Seller;
SELECT * FROM Product;
SELECT * FROM Orders;
SELECT * FROM Order_Item;
SELECT * FROM Payment;

SELECT * FROM Product WHERE Price > 2000;
SELECT * FROM Product ORDER BY Price DESC;

-- CRUD OPERATIONS
-- CREATE
INSERT INTO Customer
VALUES (11,'Test Customer','testcustomer@gmail.com','9876500011','Chennai, Tamil Nadu');

-- READ
SELECT * FROM Customer WHERE Customer_ID = 11;

-- UPDATE
UPDATE Customer
SET Address = 'Thoothukudi, Tamil Nadu'
WHERE Customer_ID = 11;

SELECT * FROM Customer WHERE Customer_ID = 11;

-- DELETE
DELETE FROM Customer
WHERE Customer_ID = 11;

SELECT * FROM Customer WHERE Customer_ID = 11;

-- Update product price
UPDATE Product
SET Price = 749.00
WHERE Product_ID = 203;

-- Update order status
UPDATE Orders
SET Status = 'Delivered'
WHERE Order_ID = 1003;