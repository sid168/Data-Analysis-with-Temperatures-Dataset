-- Compare Russia's monthly temperatures for each month in 2013 with the same month in 2012 to check for warmer or cooler trends.

WITH year_2013 AS(
  SELECT EXTRACT(YEAR FROM dt) as year, EXTRACT(MONTH FROM dt) AS month, avg_temp as avg_temp_2013
FROM temperatures_by_country

WHERE country='Russia' AND EXTRACT(YEAR FROM dt)=2013

GROUP BY year,month,avg_temp
), 

year_2012 AS(
  SELECT EXTRACT(YEAR FROM dt) as year, EXTRACT(MONTH FROM dt) AS month, avg_temp as avg_temp_2012
FROM temperatures_by_country

WHERE country='Russia' AND EXTRACT(YEAR FROM dt)=2012

GROUP BY year,month,avg_temp
  )


SELECT year_2012.year, year_2012.month, year_2012.avg_temp_2012, year_2013.avg_temp_2013
FROM year_2012
JOIN year_2013
ON year_2012.month=year_2013.month




