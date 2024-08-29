--Data analysis--
--1)List the employee number, last name, first name, sex, and salary of each employee
Select "Employees"."Emp_no", "Employees"."First_name","Employees"."Last_name", "Employees"."Sex", "Salaries"."Salary"
from "Employees"
Join "Salaries"
On "Employees"."Emp_no" = "Salaries"."Emp_no";
--2)List the first name, last name, and hire date for the employees who were hired in 1986
SELECT "First_name", "Last_name", "Hire_date" 
FROM "Employees"
WHERE "Hire_date" BETWEEN '1986-01-01' AND '1987-01-01';
--3)List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT "Departments"."Dept_no", "Departments"."Dept_name", "Dept_manager"."Emp_no", "Employees"."Last_name", "Employees"."First_name"
FROM "Departments"
JOIN "Dept_manager"
ON "Departments"."Dept_no" = "Dept_manager"."Dept_no"
JOIN "Employees"
ON "Dept_manager"."Emp_no" = "Employees"."Emp_no";
--4)List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT "Dept_emp"."Emp_no", "Employees"."Last_name", "Employees"."First_name", "Departments"."Dept_name"
FROM "Dept_emp"
JOIN "Employees"
ON "Dept_emp"."Emp_no" = "Employees"."Emp_no"
JOIN "Departments"
ON "Dept_emp"."Dept_no" = "Departments"."Dept_no";
--5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT "First_name", "Last_name","Sex"
FROM "Employees"
WHERE "First_name" = 'Hercules'
AND "Last_name" LIKE 'B%';

--6)List each employee in the Sales department, including their employee number, last name, and first name 
SELECT "Dept_emp"."Emp_no", "Employees"."Last_name", "Employees"."First_name", "Departments"."Dept_name"
FROM "Dept_emp"
JOIN "Employees"
ON "Dept_emp"."Emp_no" = "Employees"."Emp_no"
JOIN "Departments"
ON "Dept_emp"."Dept_no" = "Departments"."Dept_no"
WHERE "Departments"."Dept_name" = 'Sales';
--7)List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT "Dept_emp"."Emp_no", "Employees"."Last_name", "Employees"."First_name", "Departments"."Dept_name"
FROM "Dept_emp"
JOIN "Employees"
ON "Dept_emp"."Emp_no" = "Employees"."Emp_no"
JOIN "Departments"
ON "Dept_emp"."Dept_no" = "Departments"."Dept_no"
WHERE "Departments"."Dept_name" = 'Sales' 
OR "Departments"."Dept_name" = 'Development';
--8)List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
SELECT "Last_name", COUNT("Last_name") AS "Frequency count"
FROM "Employees"
GROUP BY "Last_name"
ORDER BY "Frequency count" DESC;