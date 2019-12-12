--get all information for each employee
select employees.first_name, employees.last_name, employees.gender, salaries.salary 
from employees
inner join salaries on employees.emp_no=salaries.emp_no;