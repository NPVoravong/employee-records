-- 1. List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
select e.emp_num, e.first_name, e.last_name, e.gender, s.salary from employees as e
inner join salaries as s on s.emp_num = e.emp_num;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- select hire_date from employees where hire_date like '__86%'
select first_name, last_name, hire_date from employees where hire_date like '1986%';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select d.dept_num, d.dept_name, e.emp_num, e.last_name, e.first_name from departments as d
inner join dept_manager as dm on dm.dept_num = d.dept_num
inner join employees as e on e.emp_num = dm.emp_num;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select e.emp_num, e.last_name, e.first_name, d.dept_name from departments as d
inner join dept_emp as de on de.dept_num = d.dept_num
inner join employees as e on e.emp_num = de.emp_num;

-- 5. List first name, last name, and gender 
-- for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, gender from employees 
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
select e.emp_num, e.last_name, e.first_name, d.dept_name from employees as e
inner join dept_emp as de on de.emp_num = e.emp_num
inner join departments as d on d.dept_num = de.dept_num
where d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select e.emp_num, e.last_name, e.first_name, d.dept_name from employees as e
inner join dept_emp as de on de.emp_num = e.emp_num
inner join departments as d on d.dept_num = de.dept_num
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, Count(last_name) from employees 
group by last_name
order by count(last_name) DESC;