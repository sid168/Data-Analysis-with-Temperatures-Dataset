-- For August 2013, classify countries into 'Hot', 'Moderate', and 'Cold' based on their average temperatures. (Hot: >30, Moderate: between 20 and 30, Cold: Otherwise)

SELECT country,
CASE WHEN avg_temp>30 THEN 'HOT'
WHEN avg_temp BETWEEN 20 and 30 THEN 'MODERATE'
ELSE 'COLD'
END AS country_type
FROM temperatures_by_country
WHERE EXTRACT(YEAR FROM dt) = 2013 AND EXTRACT(MONTH FROM dt) = 8








