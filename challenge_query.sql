--get all information for each employee
select employees.first_name, employees.last_name, employees.gender, salaries.salary 
from employees
inner join salaries on employees.emp_no=salaries.emp_no;

--find employees hired in 1986
select * 
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';