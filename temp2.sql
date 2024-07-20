
-- count nulls in temp column, and give % of nulls
WITH counting_nulls AS(
SELECT COUNT(*) AS count_nulls FROM temperatures_by_country
WHERE avg_temp IS NULL), 

overall_count AS (
  
 SELECT COUNT(*) as total_counts FROM temperatures_by_country
  
 )


SELECT count_nulls, count_nulls::FLOAT/(SELECT total_counts FROM overall_count) * 100 as percentage_nulls
FROM counting_nulls







