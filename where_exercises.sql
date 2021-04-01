USE employees;
--
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
--
-- SELECT * FROM employees WHERE last_name LIKE 'E%';
--
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
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND  last_name NOT LIKE '%qu%';
--


-- SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees LIMIT 100;
--
-- SELECT DAY(birth_date), birth_date
-- FROM employees
-- LIMIT 100;

-- SELECT NOW;

-- INSERT INTO myTable (name, created_date)
-- VALUES ('Casey', NOW())