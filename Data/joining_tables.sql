
-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    department_employees.to_date
FROM retirement_info
LEFT JOIN department_employees
ON retirement_info.emp_no = department_employees.emp_no;


-- Joining departments and dept_manager tables
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;


SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN department_employees as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

SELECT * FROM curent_emp;


-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
INTO department_retiring_employee_count
FROM current_emp as ce
LEFT JOIN department_employees as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

-- I had created this into a table using 'into' then I exported it as a CSV file


-- EMPLOYEE INFO TABLE

SELECT e.emp_no,
    e.first_name,
e.last_name,
    e.gender,
    s.salary,
    de.to_date

INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN department_employees as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');


-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);

-- List 3. some employees are showing up twice. going to work on tailored lists.
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
-- INTO dept_info
FROM current_emp as ce
INNER JOIN department_employees AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);


-- SKILL DRILL Joining retirement_info and department(dept_name)
SELECT ri.emp_no,
    ri.first_name,
ri.last_name,
de.dept_no,
    d.dept_name
FROM retirement_info AS ri
INNER JOIN department_employees AS de
ON ri.emp_no = de.emp_no
INNER JOIN departments AS d 
ON d.dept_no = de.dept_no;


-- SKILL DRILL adjusting ^^ query to include sales and development departments only
SELECT ri.emp_no,
    ri.first_name,
ri.last_name,
de.dept_no,
    d.dept_name
FROM retirement_info AS ri
INNER JOIN department_employees AS de
ON ri.emp_no = de.emp_no
INNER JOIN departments AS d 
ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Development','Sales');