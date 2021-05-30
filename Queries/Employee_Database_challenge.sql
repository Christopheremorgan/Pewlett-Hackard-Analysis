-- create retirement list by title
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    ti.title,
	ti.from_date,
    ti.to_date
INTO emp_title_info
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- create CURRENT retirement list by title
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    ti.title,
	ti.from_date,
    ti.to_date
INTO curr_emp_title_info
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (ti.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Use Dictinct with Order by to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM emp_title_info
ORDER BY emp_no, to_date DESC;

-- Use Dictinct with Order by to remove duplicate rows for CURRENT employees
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO curr_unique_titles
FROM curr_emp_title_info
ORDER BY emp_no, to_date DESC;

-- group by and count unique titles retiring
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC

-- group by and count CURRENT unique titles retiring
SELECT COUNT(emp_no), title
INTO curr_retiring_titles
FROM curr_unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC

-- mentorship eligibility file
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (ti.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (ti.to_date = '9999-01-01')
ORDER BY (emp_no);

SELECT * FROM retire_count_by_dept;
SELECT * FROM emp_title_info;
SELECT * FROM retirement_info;
SELECT * FROM dept_emp;
SELECT * FROM departments;
DROP TABLE retire_count_by_dept;

-- Current employee count by department number
SELECT COUNT(ce.emp_no) AS "rcd_count", de.dept_no, d.dept_name
INTO retire_count_by_dept
FROM current_emp AS ce
LEFT JOIN dept_emp AS de
ON ce.emp_no = de.emp_no
LEFT JOIN departments AS d
ON de.dept_no = d.dept_no
GROUP BY de.dept_no, d.dept_name
ORDER BY de.dept_no;

-- Total employee count by department number
SELECT COUNT(e.emp_no) AS "ecd_count", de.dept_no, d.dept_name
INTO employee_count_by_dept
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
ON de.dept_no = d.dept_no
GROUP BY de.dept_no, d.dept_name
ORDER BY de.dept_no;

SELECT * FROM retire_count_by_dept;
SELECT * FROM employee_count_by_dept;

	