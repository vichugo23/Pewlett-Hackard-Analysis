SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
-- INTO Number of Retiring Employees by Title
FROM employees AS e
INNER JOIN titles AS t 
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY t.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (ret.emp_no) ret.emp_no,
ret.first_name,
ret.last_name,ret.title
INTO updated_retiring_employees
FROM retiring_employees_titles AS ret
WHERE (ret.to_date = '9999-01-01')
ORDER BY ret.emp_no, ret.to_date DESC;



SELECT COUNT (ure.emp_no),
ure.title
-- INTO retiring_titles
FROM updated_retiring_employees AS ure
GROUP BY COUNT(title) DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.emp_no,
    t.title
    --INTO mentor_eligibility
    FROM employees AS e 
    INNER JOIN  department_employees AS de
    ON e.emp_no = de.emp_no
    INNER JOIN titles AS t 
    ON t.emp_no = e.emp_no
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;