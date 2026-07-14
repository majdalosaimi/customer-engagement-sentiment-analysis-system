SELECT *
FROM customer_reviews;

-- Clean space between words in Review Text
CREATE OR REPLACE VIEW fact_customer_reviews AS
SELECT 
	ReviewID, 
    CustomerID, 
    ProductID, 
    ReviewDate, 
    Rating,
   REGEXP_REPLACE(TRIM(ReviewText), '[[:space:]]+', ' ') AS ReviewText
FROM customer_reviews;

SELECT *
FROM fact_customer_reviews;