 -- What are the top 10 countries with the highest average temperature? (do not include avg_temp = NULL)
-- SELECT MAX(avg_temp), country
-- FROM temperatures_by_country
-- WHERE avg_temp IS NOT NULL
-- GROUP BY country
-- ORDER BY 1 DESC 
-- LIMIT 10
SELECT
  AVG(avg_temp),
  country
FROM
  temperatures_by_country
WHERE
  avg_temp IS NOT NULL
GROUP BY
  country
ORDER BY
  1 DESC
LIMIT
  10