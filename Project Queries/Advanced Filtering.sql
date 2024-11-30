--Query - 3 Adcanced Filtering

SELECT * FROM salesdata;

SELECT sum(totalrevenue) as Revenue,
region FROM salesdata
where date BETWEEN '01-01-2024' and '01-31-2024'
GROUP BY region
order BY Revenue DESC; -- to figure out how much sales happend each month based by region.

/* with this we can understand which region is performed better within
the specific time period*/

--Query - 4

SELECT paymentmethod, 
avg(totalrevenue) as Revenue FROM salesdata
GROUP BY paymentmethod
ORDER BY Revenue DESC;

select  distinct productname as name,
unitprice, 
paymentmethod FROM salesdata
GROUP BY name,paymentmethod, unitprice
order by unitprice desc;

/* To understand which payment method most people uses to  buy products
by using average we can filter out  that credit card is widely used might also 
get the interpretation that crdit card is used for major purchases and debit card is less used.*/