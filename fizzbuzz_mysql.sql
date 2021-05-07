WITH RECURSIVE
cnt(x) AS (
  SELECT 1
  UNION ALL
  SELECT x+1 FROM cnt
  LIMIT 100
)
SELECT
    CASE WHEN output <> '' THEN output
    ELSE x END AS output
FROM (
    SELECT CONCAT(CASE WHEN x%3 = 0 THEN 'fizz' ELSE '' END, CASE WHEN x%5 = 0 THEN 'buzz' ELSE '' END) AS output, x FROM cnt
) AS subquery;
