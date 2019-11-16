-- CREATING TABLE SCHEMAS

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);

SELECT * FROM departments;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;


CREATE TABLE dept_emp (
	index SERIAL,
	emp_no INTEGER,
	dept_no VARCHAR,
	beg_date DATE,
	to_date DATE,
	PRIMARY KEY (index),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- DROP TABLE dept_emp;

SELECT * FROM dept_emp;

-- DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	index SERIAL,
	dept_no VARCHAR,
	emp_no INTEGER,
	beg_date DATE,
	to_date DATE,
	PRIMARY KEY (index),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER,
	beg_date DATE,
	to_date DATE);

SELECT * FROM salaries;

CREATE TABLE titles (
	index SERIAL PRIMARY KEY,
	emp_no INTEGER,
	title VARCHAR,
	beg_date DATE,
	to_date DATE);

SELECT * FROM titles;

-- DROP TABLE titles;