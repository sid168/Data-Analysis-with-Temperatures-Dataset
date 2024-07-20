-- Starting from the year 2000, what is the relative change in overall climate year-over-year in Fahrenheit.
-- relative change = ((x2 - x1) / x1)


WITH temp_country AS (
  
SELECT EXTRACT(YEAR FROM dt) AS year, AVG(avg_temp) as temp
FROM temperatures_by_country
WHERE EXTRACT(YEAR FROM dt) >=2000
GROUP BY year
ORDER BY year
) , 

prev AS (SELECT year, temp, 
LAG(temp) OVER (ORDER BY year ASC) as previous_value

FROM temp_country
)

SELECT 

year, 
temp, previous_value, 

((temp-previous_value)/previous_value * 9/5) + 32 as relative FROM prev




