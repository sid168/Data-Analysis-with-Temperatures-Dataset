-- Compare Russia's monthly temperatures for each month in 2013 with the same month in 2012 to check for warmer or cooler trends.

SELECT EXTRACT(YEAR FROM dt) as year, EXTRACT(MONTH FROM dt) AS month
FROM temperatures_by_country

WHERE country='Russia' AND EXTRACT(YEAR FROM dt)=2013

GROUP BY year,month









