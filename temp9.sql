-- For Italy in August 2013, calculate the expected maximum and minimum temperatures by considering the temperature uncertainty.


SELECT avg_temp + avg_temp_uncertainty AS expected_max, avg_temp - avg_temp_uncertainty AS expected_min
FROM temperatures_by_country
WHERE country IN ('Italy') AND EXTRACT(YEAR FROM dt) = 2013 AND EXTRACT(MONTH FROM dt) = 8







