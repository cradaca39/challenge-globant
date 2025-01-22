WITH deparments AS
(
SELECT DISTINCT
	id,
    department
FROM globant.departments d
),

employees AS
(
SELECT DISTINCT
	id,
    id_deparment
FROM globant.employees e
),

mean AS
(
SELECT
	AVG(m.conteo) as mean
FROM(
SELECT DISTINCT
	e.id_deparment,
	COUNT(DISTINCT e.id) as conteo
FROM globant.employees e
WHERE YEAR(hired_date) = '2021'
GROUP BY 1) as m
), 

summary AS (
SELECT 
	d.id,
    d.department,
    count(distinct e.id) AS conteo
FROM employees e
INNER JOIN deparments d
	ON (e.id_deparment = d.id)
GROUP BY 1,2
    )
    
SELECT 
	s.id,
    s.department,
    s.conteo
FROM summary s, mean m
WHERE s.conteo > m.mean

