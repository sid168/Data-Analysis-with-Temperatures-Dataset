-- List the top 5 countries with the highest average temperatures in the summer of 2013 (June, July, August).


SELECT AVG(avg_temp) max_temp, country
FROM temperatures_by_country
WHERE EXTRACT(YEAR FROM dt)=2013 AND EXTRACT(MONTH FROM dt) BETWEEN 6 AND 8 
AND avg_temp IS NOT NULL
GROUP BY 2
ORDER BY max_temp DESC
LIMIT 5





