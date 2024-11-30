/* query 7
Identify products that generate the highest total revenue */

SELECT productname, SUM(totalrevenue) AS Revenue
FROM salesdata
GROUP BY productname,totalrevenue
HAVING SUM(totalrevenue) > 1000  -- Products with total revenue over 1000
ORDER BY totalrevenue DESC
limit 10;


-- Query 8


-- Calculate the running total of revenue over time
SELECT date, 
SUM(totalrevenue) OVER (ORDER BY date) AS runningtotal
FROM salesdata
ORDER BY date;  -- Order by date to track cumulative revenue over time

-- Query 9 

-- Rank products based on their total revenue
SELECT productname, 
SUM(totalrevenue) AS totalrevenue,
RANK() OVER (ORDER BY SUM(totalrevenue) DESC) AS revenuerank  -- Rank based on total revenue
FROM salesdata
GROUP BY productname  -- Group by product name
ORDER BY revenuerank
LIMIT 10;  -- Order by top 10 rank in ascending order
