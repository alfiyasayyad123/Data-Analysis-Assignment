CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;

CREATE TABLE IF NOT EXISTS sales (
    OrderID VARCHAR(20) PRIMARY KEY,
    OrderDate DATE,
    Region VARCHAR(20),
    Category VARCHAR(30),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    UnitCost DECIMAL(10,2)
);

INSERT IGNORE INTO sales
(OrderID, OrderDate, Region, Category, Quantity, UnitPrice, UnitCost)
VALUES
('ORD-1001', '2026-01-05', 'West',  'Laptop', 2, 55000, 42000),
('ORD-1002', '2026-01-12', 'North', 'Phone',  5, 18000, 12500),
('ORD-1003', '2026-01-20', 'South', 'Tablet', 3, 22000, 16000),
('ORD-1004', '2026-02-03', 'East',  'Laptop', 1, 56000, 42500),
('ORD-1005', '2026-02-14', 'West',  'Phone',  4, 17500, 12200),
('ORD-1006', '2026-02-24', 'North', 'Tablet', 2, 22500, 16200),
('ORD-1007', '2026-03-02', 'South', 'Laptop', 2, 54500, 41500),
('ORD-1008', '2026-03-10', 'East',  'Phone',  6, 18200, 12600),
('ORD-1009', '2026-03-18', 'West',  'Tablet', 4, 21800, 15000),
('ORD-1010', '2026-04-01', 'North', 'Laptop', 1, 57000, 43000),
('ORD-1011', '2026-04-11', 'South', 'Phone',  3, 17900, 12400),
('ORD-1012', '2026-04-22', 'East',  'Tablet', 5, 22100, 16100);
SELECT * FROM sales;
SELECT
    SUM(Quantity * UnitPrice) AS Total_Revenue
FROM sales;
SELECT SUM(Quantity * UnitPrice) AS Total_Revenue
FROM sales;
SELECT
    Region,
    SUM(Quantity * UnitPrice) AS Total_Revenue
FROM sales
GROUP BY Region
ORDER BY Total_Revenue DESC;
SELECT Region, SUM(Quantity * UnitPrice) AS Total_Revenue
FROM sales
GROUP BY Region
ORDER BY Total_Revenue DESC;

SELECT
    Category,
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    SUM(Quantity) AS Total_Units
FROM sales
GROUP BY Category
ORDER BY Total_Revenue DESC;

SELECT
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    SUM(Quantity * UnitCost) AS Total_Cost,
    SUM(Quantity * (UnitPrice - UnitCost)) AS Total_Profit
FROM sales;
USE sales_analysis;
SELECT * FROM sales;
SELECT
    Region,
    SUM(Quantity * UnitPrice) AS Total_Revenue
FROM sales
GROUP BY Region
ORDER BY Total_Revenue DESC;
SELECT
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    SUM(Quantity * UnitCost) AS Total_Cost,
    SUM(Quantity * (UnitPrice - UnitCost)) AS Total_Profit
FROM sales;