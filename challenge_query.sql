--get all information for each employee
select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary 
from employees
inner join salaries on employees.emp_no=salaries.emp_no
order by employees.emp_no ASC;

--find employees hired in 1986
select * 
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--get info for the department managers
select dept_manager.dept_no, departments.dept_name, employees.first_name, employees.last_name, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, salaries.salary  
from dept_manager
inner join salaries on dept_manager.emp_no=salaries.emp_no
inner join departments on dept_manager.dept_no=departments.dept_no
inner join employees on dept_manager.emp_no=employees.emp_no;

--get department information for all employees
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on dept_emp.emp_no=employees.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
order by dept_emp.emp_no ASC;

--find every employee named "Hercules B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%';

--find every employee who works in Sales
select dept_emp.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name 
from dept_emp
inner join employees on dept_emp.emp_no=employees.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales';

--find every employee who works in Sales or Development
select dept_emp.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name 
from dept_emp
inner join employees on dept_emp.emp_no=employees.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--find the most common last names on the roster
select last_name, COUNT(last_name) AS name_count from employees
GROUP BY last_name
ORDER BY name_count DESC;