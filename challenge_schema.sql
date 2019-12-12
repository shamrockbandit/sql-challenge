DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
    PRIMARY KEY (dept_no)
);

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) references employees(emp_no),
    FOREIGN KEY (dept_no) references departments(dept_no)
);

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
    emp_no INT,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (dept_no) references departments(dept_no),
    FOREIGN KEY (emp_no) references employees(emp_no)
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_no INT,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
    emp_no INT,
    salary INT,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
    emp_no INT,
    title VARCHAR,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);