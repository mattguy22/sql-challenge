-- Employee DB Data Analysis 

-- List the employee number, last name, first name, sex, and salary of each employee: 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee e
JOIN salary s ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986: 
SELECT first_name, last_name, hire_date
FROM employee
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name: 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN department d ON dm.dept_no = d.dept_no
JOIN employee e ON dm.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name: 
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_employee de
JOIN employee e ON de.emp_no = e.emp_no
JOIN department d ON de.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B: 
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name: 
SELECT e.emp_no, e.last_name, e.first_name
FROM dept_employee de
JOIN employee e ON de.emp_no = e.emp_no
JOIN department d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name: 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_employee de
JOIN employee e ON de.emp_no = e.emp_no
JOIN department d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name): 
SELECT last_name, COUNT(*) AS frequency
FROM employee
GROUP BY last_name
ORDER BY frequency DESC;