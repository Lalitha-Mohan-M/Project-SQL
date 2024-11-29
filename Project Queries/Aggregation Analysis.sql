SELECT * FROM salesdata; -- To return all table values

SELECT Productcategory FROM salesdata; 

-- QUERY - 1
SELECT Productcategory,
sum(totalrevenue) as Revenue from salesdata
GROUP BY productcategory
ORDER BY Revenue DESC;-- To know what category of products is sold most based on revenue.

-- QUERY - 2

SELECT productname, productcategory,
sum (unitssold) AS sold FROM salesdata
GROUP BY productname, productcategory
ORDER BY sold DESC
LIMIT 10; -- To know which product sold the most and which category it falls under.
