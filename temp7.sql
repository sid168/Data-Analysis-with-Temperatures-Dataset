 -- Between the years 2000 and 2013, what difference in average yearly temperature between Djibouti and Greenland?
-- WITH dji AS 
-- (
-- SELECT AVG(avg_temp) as dji_temp, EXTRACT(YEAR FROM dt) as year
--   FROM temperatures_by_country
--   WHERE country='Djibouti' AND EXTRACT(YEAR FROM dt) BETWEEN 2000 and 2013
--   GROUP BY EXTRACT(YEAR FROM dt)
--  )
-- ,
-- green as (
--   SELECT AVG(avg_temp) as green_temp, EXTRACT(YEAR FROM dt) as year  FROM temperatures_by_country
--   WHERE country='Greenland' AND EXTRACT(YEAR FROM dt) BETWEEN 2000 and 2013
--   GROUP BY EXTRACT(YEAR FROM dt)
-- )
-- SELECT dji.year,dji.dji_temp-green.green_temp FROM
-- dji
-- JOIN green 
-- ON dji.year=green.year
-- ORDER BY dji.year




-- Between the years 2000 and 2013, what difference in average yearly temperature between Djibouti and Greenland?
WITH Djibouti AS(
  SELECT 	AVG(avg_temp) avg_Djibouti
  FROM temperatures_by_country
  WHERE EXTRACT(YEAR FROM DT) >=2000
  			AND EXTRACT(YEAR FROM DT) <= 2013
  			AND country = 'Djibouti'
  ),
  
  Greenland AS(
  SELECT AVG(avg_temp) avg_greenland
  FROM temperatures_by_country
  WHERE EXTRACT(YEAR FROM DT) >=2000
  			AND EXTRACT(YEAR FROM DT) <= 2013
  			AND country = 'Greenland'

  )
  
  SELECT ROUND(ABS(avg_Djibouti - avg_greenland)::numeric, 2)
  FROM Djibouti, Greenland