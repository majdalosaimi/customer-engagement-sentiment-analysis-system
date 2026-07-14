SELECT *
FROM customer_journey;

SELECT DISTINCT `Action`, hex(`Action`)
FROM customer_journey;

SELECT JourneyID, COUNT(*) 
FROM customer_journey
GROUP BY JourneyID
HAVING COUNT(*) > 1;


CREATE OR REPLACE VIEW fact_customer_journey AS
WITH duplicates_cte AS (
	SELECT 
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		CASE
			WHEN LOWER(TRIM(Stage)) = 'checkout' THEN 'Checkout'
			WHEN LOWER(TRIM(Stage)) = 'productpage' THEN 'ProductPage'
			WHEN LOWER(TRIM(Stage)) = 'homepage' THEN 'HomePage'
		END Stage,
		`Action`,
        CASE
			WHEN Duration = 0.00 THEN NULL
            ELSE Duration
		END	Duration,
        AVG(Duration) OVER(PARTITION BY VisitDate) avg_duration,
        ROW_NUMBER() OVER(PARTITION BY JourneyID, CustomerID, ProductID, VisitDate, Stage, `Action`
			ORDER BY JourneyID) row_num
	FROM customer_journey
)
SELECT 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	`Action`,
    ROUND(COALESCE(Duration, avg_duration),2) Duration
FROM duplicates_cte
WHERE row_num = 1
;

SELECT *
FROM fact_customer_journey;