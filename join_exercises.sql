use join_test_db;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT t.title, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN departments as d
         JOIN titles t on e.emp_no = t.emp_no
WHERE e.gender = 'f' AND t.title = 'Department Manager';




=========================================================

SELECT emp_no, salary
FROM salaries
WHERE to_date > NOW()
ORDER BY salary DESC;

# second, add to outer query
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
)
    LIMIT 10;


# name and hire_date of earliest-hired department employees
SELECT first_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE from_date = (SELECT MIN(from_date) FROM dept_emp)
);


# === Find the names and genders of all current department managers
# first, find the emp_no of all current department managers

SELECT emp_no
FROM dept_manager
WHERE TO_DATE > NOW();

SELECT CONCAT(first_name, ' ', last_name) as full_name, gender
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE TO_DATE > NOW()
);


# === Find hire_date of all current engineers
# all senior engineers from Customer Service department

SELECT *
FROM titles
WHERE title = 'Senior Engineer'
  AND emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Customer Service'
    )
