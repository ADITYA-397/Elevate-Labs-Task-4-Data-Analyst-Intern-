use world;
show tables;
select * from sales limit 10;

select COUNT(*) from sales;

describe sales;

SELECT SUM(Price * Quantity) AS total_revenue
FROM sales;

SELECT Product, SUM(Price * Quantity) AS revenue
FROM sales
GROUP BY Product
ORDER BY revenue DESC;

SELECT City, SUM(Price * Quantity) AS revenue
FROM sales
GROUP BY City
ORDER BY revenue DESC;

SELECT Manager, SUM(Price * Quantity) AS revenue
FROM sales
GROUP BY Manager
ORDER BY revenue DESC;

SELECT `Purchase Type`, SUM(Price * Quantity) AS revenue
FROM sales
GROUP BY `Purchase Type`;

SELECT `Payment Method`, SUM(Price * Quantity) AS revenue
FROM sales
GROUP BY `Payment Method`
ORDER BY revenue DESC;

SELECT Date, SUM(Price * Quantity) AS daily_revenue
FROM sales
GROUP BY Date
ORDER BY STR_TO_DATE(Date, '%d/%m/%Y');







