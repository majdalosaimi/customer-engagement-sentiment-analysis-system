SELECT *
FROM products;

-- Categorize products based on their price
CREATE OR REPLACE VIEW dim_products AS
SELECT 
	ProductID,
    ProductName,
    Price,
    -- Category => no need to add this column since we have only one category
    CASE
		WHEN Price < 50 THEN 'Low'
        WHEN Price BETWEEN 50 and 200 THEN 'Medium'
        ELSE 'High'
	END AS PriceCategory
FROM products;

SELECT *
FROM dim_products;