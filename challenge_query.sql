--get all information for each employee
select employees.first_name, employees.last_name, employees.gender, salaries.salary 
from employees
inner join salaries on employees.emp_no=salaries.emp_no;

--find employees hired in 1986
select * 
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--find info for the department managers
select dept_manager.dept_no, departments.dept_name, employees.first_name, employees.last_name, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, salaries.salary  
from dept_manager
inner join salaries on dept_manager.emp_no=salaries.emp_no
inner join departments on dept_manager.dept_no=departments.dept_no
inner join employees on dept_manager.emp_no=employees.emp_no;