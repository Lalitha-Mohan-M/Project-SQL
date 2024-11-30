-- Query 5 

SELECT EXTRACT(Month from date) as Month, 
sum(TotalRevenue) as Revenue from salesdata
GROUP BY MONTH
ORDER BY Revenue Desc;


/* To Find out how revenue raised by monthly basis 
to see the trend in renveues.*/

--Query 6

SELECT ProductCategory, EXTRACT(MONTH from date) as date,
sum(TotalRevenue) As revenue from salesdata
group by productcategory,date
ORDER BY revenue DESC
limit 10;

/* To figure out which product category performs at all quarters 
of the year. 
now, we know as by our dataset 'electronics' generates at almost all parts of the year*/

