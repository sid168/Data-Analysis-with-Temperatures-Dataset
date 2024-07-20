-- count nulls in temp column, and give % of nulls

WITH total_count AS (
    SELECT COUNT(*) AS total_count 
    FROM temperatures_by_country
), 
null_count AS (
    SELECT COUNT(*) AS null_count 
    FROM temperatures_by_country 
    WHERE avg_temp IS NULL
)
SELECT 
    null_count,(null_count * 100.0 / total_count) AS null_percentage
FROM 
    null_count, total_count;







