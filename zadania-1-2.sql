USE firma;

SELECT * FROM employees;
SELECT * FROM jobs;
SELECT * FROM departments;
SELECT * FROM locations;
#-------------------------------ZADANIA SQL: Zestaw 1---------------------------------------
SELECT email FROM employees;
SELECT id, first_name, last_name FROM employees;
SELECT 
id AS employees_id,
email AS email_priv
FROM employees;
SELECT 	DISTINCT first_name FROM employees;
SELECT * FROM employees WHERE first_name = "Tom";
SELECT COUNT(DISTINCT first_name) AS unikalne_imiona FROM employees;
SELECT * FROM employees WHERE hire_date >= "2019-01-01";
SELECT title FROM jobs WHERE min_salary <= "5000";
SELECT * FROM employees WHERE first_name = "Adam" AND last_name = "Irwin";
SELECT * FROM employees WHERE first_name = "Tom" OR first_name =  "John";
SELECT * FROM employees WHERE last_name = "Martinez" AND birth_date >= "1988-01-01";
SELECT * FROM employees WHERE department_id != 3;
SELECT * FROM employees WHERE department_id = 6 AND (job_id = 2 OR job_id = 4);
SELECT * FROM employees WHERE department_id = 3 AND job_id != 2;
SELECT * FROM jobs ORDER BY min_salary DESC;
SELECT * FROM jobs ORDER BY  min_salary DESC, max_salary DESC;
SELECT * FROM jobs WHERE min_salary = 3000 ORDER BY max_salary ASC;
SELECT * FROM locations WHERE street_address IS NULL;
SELECT * FROM employees LIMIT 3;
SELECT * FROM employees LIMIT 5 OFFSET 10;
SELECT * FROM employees WHERE department_id = 3 ORDER BY hire_date DESC LIMIT 5;
SELECT birth_date AS oldest_employee FROM employees ORDER BY birth_date ASC LIMIT 1;
SELECT birth_date AS youngest_employee_department_2 FROM employees WHERE department_id = 2 
ORDER BY birth_date DESC LIMIT 1;
SELECT first_name, last_name FROM employees ORDER BY hire_date DESC LIMIT 1;
SELECT COUNT(*) AS number_of_software_engineers FROM employees WHERE job_id = 2;

#                  ----------------------------------------------

#-------------------------------ZADANIA SQL: Zestaw 2-------------------------------------

SELECT * FROM jobs WHERE title LIKE "HR%";
SELECT * FROM jobs WHERE title LIKE "%Software%";
SELECT AVG(min_salary) AS average_min_salary_sales FROM jobs WHERE title LIKE "Sales%";
SELECT title FROM jobs WHERE title LIKE "_u%";
SELECT * FROM employees WHERE first_name LIKE "A____%";
SELECT * FROM employees WHERE first_name LIKE "E%a";
SELECT * FROM employees WHERE email NOT LIKE  "%@gmail.com" ORDER BY email ASC;
SELECT * FROM employees WHERE first_name IN ("Adam", "Alice", "Tom");
SELECT * FROM employees WHERE department_id NOT IN (2, 3, 5);
SELECT title FROM jobs WHERE min_salary NOT BETWEEN 3000 AND 8000;
SELECT * FROM employees WHERE hire_date BETWEEN "2015-01-01" AND "2016-12-31" AND department_id NOT IN (2, 3);
SELECT * FROM employees WHERE birth_date LIKE "1990%" ORDER BY birth_date ASC;
SELECT CONCAT(first_name," ", last_name," ","-"," ", birth_date) AS employee FROM employees
WHERE job_id = 3;
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;
SELECT city AS miasto, department_name AS dzial 
FROM locations LEFT JOIN departments ON locations.id = location_id
ORDER BY city ASC;

#-----------------------------------------------------------------------------------
