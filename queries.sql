SELECT * FROM superstore;

SELECT "Customer Name", Sales
FROM superstore;

SELECT *
FROM superstore
WHERE Sales > 1000;

SELECT "Customer Name", Sales
FROM superstore
ORDER BY Sales DESC;

SELECT SUM(Sales) AS Total_Sales
FROM superstore;

SELECT AVG(Sales) AS Average_Sales
FROM superstore;

SELECT COUNT(*) AS Total_Orders
FROM superstore;

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 700000;

SELECT 
    "Customer Name",
    Sales,
    CASE
        WHEN Sales > 1000 THEN 'High'
        WHEN Sales BETWEEN 500 AND 1000 THEN 'Medium'
        ELSE 'Low'
    END AS Sales_Level
FROM superstore;

SELECT "Customer Name", Sales
FROM superstore
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM superstore
);

SELECT "Customer Name", Sales
FROM superstore
ORDER BY Sales DESC
LIMIT 10;

SELECT Region,
       AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY Region;

SELECT "Ship Mode",
       COUNT(*) AS Total_Orders
FROM superstore
GROUP BY "Ship Mode";

SELECT State,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;