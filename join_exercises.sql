USE employees;


SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE();

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE()
  AND e.gender = 'F';

SELECT t.title,
       COUNT(t.emp_no) AS 'Count'
FROM titles AS t
         JOIN dept_emp de ON t.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
WHERE de.to_date > CURDATE()
  AND t.to_date > CURDATE()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM employees AS e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
         JOIN salaries s ON s.emp_no = e.emp_no
WHERE dm.to_date > CURDATE()
  AND s.to_date > CURDATE();


SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee',
       d.dept_name AS 'Department Name',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE()
  AND dm.to_date > CURDATE();