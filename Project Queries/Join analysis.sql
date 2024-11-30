
select * from customer
LEFT JOIN salesdata ON Customer.transactionid  = salesdata.transactionid;
-- query to test join 

SELECT salesdata.productcategory, customer.gender, SUM(salesdata.totalrevenue) AS total_revenue
FROM salesdata 
JOIN customer ON salesdata.transactionid = customer.transactionid
GROUP BY salesdata.productname, customer.gender, salesdata.productcategory,salesdata.totalrevenue
ORDER BY totalrevenue DESC;

-- This query combines sales data with customer information to find out how much revenue is made by different age groups for each product by joining the two datasets based on the transaction ID.
