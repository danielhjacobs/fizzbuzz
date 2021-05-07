WITH RECURSIVE
cnt(x) AS (
  SELECT 1
  UNION ALL
  SELECT x+1 FROM cnt
),
cnt_limit as (
  SELECT * FROM cnt
  LIMIT 100
)
SELECT
    CASE WHEN output <> '' THEN output
    ELSE CAST(x AS TEXT) END
FROM (
    SELECT CASE WHEN x%3 = 0 THEN 'fizz' ELSE '' END || CASE WHEN x%5 = 0 THEN 'buzz' ELSE '' END AS output, x FROM cnt_limit
) AS subquery;
