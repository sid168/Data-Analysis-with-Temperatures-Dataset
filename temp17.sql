
-- Identify pairs of countries that had, on average, similar temperatures (less than 1 degree difference) in the years from 2010 to 2013.


WITH c1 AS (
  SELECT country AS country_1, AVG(avg_temp) AS c1_avg
  FROM temperatures_by_country
  WHERE EXTRACT(YEAR FROM dt) BETWEEN 2010 AND 2013
  GROUP BY country
),

c2 AS (
  SELECT country AS country_2, AVG(avg_temp) AS c2_avg
  FROM temperatures_by_country
  WHERE EXTRACT(YEAR FROM dt) BETWEEN 2010 AND 2013
  GROUP BY country
)

SELECT c1.country_1, c2.country_2, c1.c1_avg, c2.c2_avg
FROM c1
JOIN c2 ON c1.country_1 <> c2.country_2
WHERE ABS(c1.c1_avg - c2.c2_avg) < 1
ORDER BY c1.country_1, c2.country_2;


