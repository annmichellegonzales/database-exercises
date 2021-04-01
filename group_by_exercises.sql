USE employees;

-- SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name, first name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE
GROUP by last_name
ORDER BY last_name DESC LIMIT 10;


-- SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC;

SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
AND NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE last_name LIKE '%q%', NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
GROUP BY gender
ORDER BY gender;


