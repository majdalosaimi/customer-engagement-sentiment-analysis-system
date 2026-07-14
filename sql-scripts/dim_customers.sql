SELECT *
FROM customers;

SELECT *
FROM geography;

-- Join customer table with geography table to enrich customer data with geographic information
CREATE OR REPLACE VIEW dim_customers AS
SELECT 
	CustomerID,
    CustomerName,
    Email,
    Gender,
    Age,
    CASE
	WHEN age < 20 THEN 'Under 20'
    WHEN age BETWEEN 20 AND 29 THEN '20-29'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50 and Above'
END AS AgeGroup,
    Country,
    City
FROM customers c
LEFT JOIN geography g
	ON c.GeographyID = g.GeographyID;
    
SELECT *
FROM dim_customers;