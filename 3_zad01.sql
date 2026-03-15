USE aggregates;

SELECT 
COUNT(id)
FROM batman;

SELECT
COUNT(age)
FROM batman;

SELECT 
COUNT(*) 
FROM batman
WHERE sex = "M" AND age > 40;

SELECT
SUM(price)
FROM batman;

SELECT
SUM(age)
FROM batman
WHERE sex = "F";

SELECT
SUM(price)
FROM batman
WHERE gift IN ("komputer", "okno");

SELECT
MAX(price)
FROM batman;

SELECT
MAX(start_date)
FROM batman;

SELECT
MAX(last_name)
FROM batman;

SELECT
MIN(price)
FROM batman;

SELECT
MIN(start_date)
FROM batman;

SELECT
MIN(last_name)
FROM batman;

SELECT
MIN(price) as cena_minimalna,
MAX(price) as cena_maksymalna
FROM batman;

SELECT
MAX(price) - MIN(price)
FROM batman;

SELECT
AVG(age) as srednia_wieku
FROM batman;

SELECT
SUM(age)/COUNT(age) as srednia_wieku
FROM batman;

SELECT
sex, AVG(age)
FROM batman
GROUP BY sex;