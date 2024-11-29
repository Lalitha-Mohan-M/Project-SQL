CREATE TABLE Salesdata (
    TransactionID SERIAL PRIMARY KEY, -- Unique identifier for each transaction
    Date DATE NOT NULL, -- Date of the transaction
    ProductCategory VARCHAR(100), -- Category of the product (e.g., Electronics, Clothing)
    ProductName VARCHAR(255), -- Name of the product
    UnitsSold INT, -- Number of units sold
    UnitPrice DECIMAL(10, 2), -- Price per unit (supports decimal places)
    TotalRevenue DECIMAL(15, 2), -- Total revenue for the transaction
    Region VARCHAR(100), -- Region where the sale occurred
    PaymentMethod VARCHAR(50) -- Payment method used (e.g., Credit Card, Cash)
);

COPY Salesdata(TransactionID, Date, ProductCategory, ProductName, UnitsSold, UnitPrice, TotalRevenue, Region, PaymentMethod)
FROM 'D:\DA Technical Courses\SQL Repository\Dataset\Online Sales Data.csv'
DELIMITER ',' 
CSV HEADER;-- Code to copy data from CSV file into SQL table

Select * from salesdata;--To return all the Values of table.

