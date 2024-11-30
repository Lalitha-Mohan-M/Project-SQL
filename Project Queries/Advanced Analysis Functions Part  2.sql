-- Query 10

-- Compare products based on their revenue vs. the number of units sold
SELECT productname,
       SUM(totalrevenue) AS totalrevenue,
       SUM(unitssold) AS total_units_sold,
       (SUM(totalrevenue) / SUM(unitssold)) AS avg_price_per_unit  -- Calculate average price per unit
FROM salesdata
GROUP BY productname
ORDER BY totalrevenue DESC;  -- Order by total revenue in descending order
-- unfortunately because of no repetition of products not visible changes..

-- Query 11

-- Analyze the correlation between product price (average) and total revenue
SELECT productname, 
AVG(unitprice) AS avg_unit_price,  -- Calculate the average unit price
SUM(totalrevenue) AS total_revenue
FROM salesdata
GROUP BY productname
HAVING SUM(totalrevenue) > 500  -- Optional filter to show high revenue products
ORDER BY avg_unit_price DESC;  -- Order by average unit price in descending order

-- unfortunately because of no repetition of products not visible changes..

