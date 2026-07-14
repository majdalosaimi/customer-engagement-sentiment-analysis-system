SELECT *
FROM engagement_data;

SELECT 
	DISTINCT ContentType, 
    HEX(ContentType) hex_value
FROM engagement_data;

-- Clean and Normalize engagement_data
CREATE OR REPLACE VIEW fact_engagement_data AS
SELECT 
	EngagementID, 
    ContentID,
    CampaignID, 
    ProductID,
    CASE
		WHEN LOWER(TRIM(ContentType)) = 'blog' THEN 'Blog'
        WHEN LOWER(TRIM(ContentType)) = 'video' THEN 'Video'
        WHEN LOWER(TRIM(ContentType)) = 'newsletter' THEN 'Newsletter'
        WHEN LOWER(TRIM(ContentType)) = 'socialmedia' THEN 'Social Media'
	END ContentType, -- Normalize content type column
    CAST(SUBSTRING_INDEX(ViewsClicksCombined, '-', 1) AS SIGNED) AS Views, -- Extract views from ViewsClicksCombined column
    CAST(SUBSTRING_INDEX(ViewsClicksCombined, '-', -1) AS SIGNED) AS Clicks, -- Extract clicks from ViewsClicksCombined column
    Likes, 
    EngagementDate
FROM engagement_data
WHERE lower(ContentType) <> 'newsletter';

SELECT *
FROM fact_engagement_data;