-- List countries that saw a difference of more than 10°C between their highest and lowest temperatures in the first eight months of 2013.

SELECT country,

MAX(avg_temp)-MIN(avg_temp) as difference
FROM temperatures_by_country
WHERE EXTRACT(YEAR FROM dt)=2013 AND EXTRACT(MONTH FROM dt)<=8
GROUP BY country
HAVING MAX(avg_temp)-MIN(avg_temp)>10




