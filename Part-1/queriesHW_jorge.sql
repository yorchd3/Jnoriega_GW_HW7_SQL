-- HW queries
-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s on s.emp_no = e.emp_no;

-- List employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.beg_date, dm.to_date
FROM dept_manager dm
JOIN departments d ON d.dept_no = dm.dept_no
JOIN employees e ON e.emp_no = dm.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'  AND last_name LIKE 'B%';

-- -- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN employees e ON e.emp_no = de.emp_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN employees e ON e.emp_no = de.emp_no
WHERE dept_name = 'Sales' or dept_name ='Development';

-- In descending order, list the frequency count of employee last names, i.e.,
-- how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY last_name DESC;