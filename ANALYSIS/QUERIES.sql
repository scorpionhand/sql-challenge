-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON 
employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN '1986-01-01' AND '1986-12-31' 

-- List the 'manager of each department' 'along with' their department number, 
-- 	department name, employee number, last name, and first name (2 points)
--
-- NOTE: The 'manager of each department' would duplicate the ask for last name, first name, and/or employee number
-- My interpretation is the ask to list all managers 'with', not 'along with'
SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM dept_manager
INNER JOIN departments ON 
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON 
dept_manager.emp_no = employees.emp_no;

-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name (2 points)


-- List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B (2 points)


-- List each employee in the Sales department, including their employee number, 
-- last name, and first name (2 points)


-- List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name (4 points)


-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name) (4 points)