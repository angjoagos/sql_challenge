-- list the employee number, last name, first name, sex and salary of each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no;

--list the first name, last name, and hire date for the employees who were hired in 1986
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
--list the manager of each department along with their department number, department name, 
--employee number, last name, and first name
SELECT dept_manager.dept_no, dept_manager.emp_no, employees.emp_no, employees.firt_name, employees.last_name,
departments.dept_no, departments.dept_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no =  employees.emp_no;

--list the department number for each employee along with that employee's 
--employee number, last name, first name and department name
SELECT dept_emp.emp_no, dept_emp.dept_no, employees.emp_no, employees.firt_name, employees.last_name,
departments.dept_no, departments.dept_name
FROM dept_emp
INNER JOIN departments on debt_emp.dept_no = departments.dept_no
INNER JOIN employees on dept_emp.emp_no =  employees.emp_no;
--list first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with
--the letter B.


-- list each employee in the sales department, including their employee number, last name and first name.
SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, dept_emp.dept_no, employees.emp_no, employees.last_name,
employees.first_name
FROM departments
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

-- list each employee in the sales and development departments, including thier employee number,
--last name, first name, and department name.
SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, dept_emp.dept_no, employees.emp_no, employees.last_name,
employees.first_name
FROM orders
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';
--list the frequency counts, in descending order, or all the employee last names ( that is, how many employees share
--each last name)
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
