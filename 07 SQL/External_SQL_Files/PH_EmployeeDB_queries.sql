DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS titles;

--Creating tables for PH-EmployeeDB
CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name));
	
CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no));

CREATE TABLE salaries (
  	emp_no INT NOT NULL,
  	salary INT NOT NULL,
  	from_date DATE NOT NULL,
  	to_date DATE NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  	PRIMARY KEY (emp_no));	
	

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	--FOREIGN KEY (dept_no) REFERENCES salaries (emp_no),
    PRIMARY KEY (emp_no, dept_no));

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	--FOREIGN KEY (emp_no) REFERENCES dept_manager (emp_no),
	--FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no));
	
CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, title, from_date),
	UNIQUE(emp_no,title,from_date));
	

	
	
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM titles;


--Determine Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Determine how many employees were born in 1952
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

--Determine how many employees were born in 1953
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31'
;
--Determine how many employees were born in 1954
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31'
;
--Determine how many employees were born in 1955
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31'
;
-- Number of employees retiring using count
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
;
--Create table "retirement_info" of retirement-eligible employeees
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Check the table
SELECT * FROM retirement_info;


--Drop current retirement_info table
DROP TABLE retirement_info;

-- Create new table for retiring employees adding emp_to table
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Check the table
SELECT * FROM retirement_info;

-- Joining departments and dept_manager tables
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT ri.emp_no,
    ri.first_name,
	ri.last_name,
    de.to_date
	FROM retirement_info as ri
	LEFT JOIN dept_emp as de
	ON ri.emp_no = de.emp_no;

--review again...
DROP TABLE IF EXISTS current_emp;


--Create retirement_info of employees still working at PH.  Call table current_emp
SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
	de.to_date
	INTO current_emp
	FROM retirement_info as ri
	LEFT JOIN dept_emp as de
	ON ri.emp_no = de.emp_no
	WHERE de.to_date = ('9999-01-01');

SELECT * FROM current_emp

--review again...
DROP TABLE IF EXISTS emp_count_by_dept_no;

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
	INTO emp_count_by_dept_no
	FROM current_emp as ce
	LEFT JOIN dept_emp as de
	ON ce.emp_no = de.emp_no
	GROUP BY de.dept_no
	
--Review salaries table columns
SELECT * FROM salaries
ORDER BY to_date DESC;

--Create Employee Information table
SELECT e.emp_no, e.first_name, e.last_name, e.gender, de.to_date
--INTO emp_info
	FROM employees as e
	INNER JOIN salaries as s
		ON(e.emp_no=s.emp_no)
	INNER JOIN dept_emp as de
		ON(e.emp_no=de.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
		AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
		AND (de.to_date = '9999-01-01');
--ORDER BY de.dept_no;

-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
--INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
		
--Create table fo department retirees
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
-- INTO dept_info
	FROM current_emp as ce
	INNER JOIN dept_emp AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no);
		
--Skill Drill
--Create a query that will return only the information relevant to the Sales team. The requested list includes:Employee numbers, Employee first name,Employee last name,Employee department name
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
	FROM current_emp as ce
	INNER JOIN dept_emp AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
	WHERE d.dept_name='Sales'
	
	
--Skill Drill
--Create another query that will return the following information for the Sales and Development teams:Employee numbers, Employee first name, Employee last name, Employee department name
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
	FROM current_emp as ce
	INNER JOIN dept_emp AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
	WHERE d.dept_name IN ('Sales','Development' )
	
	

