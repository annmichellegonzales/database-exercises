USE employees;

-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

-- SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' ORDER BY last_name DESC;

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

-- SELECT * FROM employees WHERE last_name LIKE '%q%';
--
-- SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
--
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';
--
-- SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
--
-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
--
-- SELECT * FROM employees WHERE last_name != 'qu' AND last_name LIKE '%q%';


-- SELECT DAY(birth_date), birth_date FROM employees LIMIT 100;
--
-- SELECT *, DATEDIFF(NOW(), hire_date) AS 'Days Employed'
-- FROM employees
-- WHERE MONTH(birth_date) = 12
-- AND DAY(birth_date) = 25
-- AND (
-- YEAR(hire_date) BETWEEN 1990 AND 1999)
-- ORDER BY birth_date, hire_date DESC LIMIT 5;

--
-- SELECT COUNT(hire_date), gender
-- FROM employees
-- WHERE first_name = 'Irena'
-- GROUP BY gender;
--        , hire_date, last_name
-- ORDER BY last_name DESC;


-- SELECT @@GLOBAL.sql_mode;
-- SELECT @@SESSION.sql_mode;
--
-- SET SESSION sql_mode = 'STRICT_TRANS_TABLES, NO_ENGINE_SUBSTITUTION';
--
-- SELECT *
-- FROM employees
-- WHERE first_name = 'Irena'
-- GROUP BY gender;

