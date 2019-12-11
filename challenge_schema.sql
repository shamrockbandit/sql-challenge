DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
);

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR,
    from_date DATE,
    to_date DATE
);

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
    emp_no INT,
    from_date DATE,
    to_date DATE
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_no INT,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR(1),
    hire_date DATE
);

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
    emp_no INT,
    salary INT,
    from_date DATE,
    to_date DATE,
);

DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
    emp_no INT,
    title INT,
    from_date DATE,
    to_date DATE,
);