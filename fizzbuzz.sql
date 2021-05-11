-- This works for latest PostgreSQL, SQLite, and MySQL
-- However, you must either use CONCAT instead of pipes or un-comment the next line for MySQL
--SET sql_mode = 'PIPES_AS_CONCAT';
WITH RECURSIVE
cnt(i) AS (
  SELECT 1
  UNION ALL
  SELECT i+1 FROM cnt
  WHERE i < 100
)
SELECT
(CASE WHEN output <> '' THEN output ELSE CAST(i AS CHAR(3)) END) AS output
FROM (
    SELECT CASE WHEN i % 3 = 0 THEN 'Fizz' ELSE '' END || CASE WHEN i % 5 = 0 THEN 'Buzz' ELSE '' END AS output, i FROM cnt
) AS subquery;
