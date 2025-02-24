# ERD Realtionship Diagram DB schema
# Modify this code to update the DB schema diagram.


Department
-
dept_no PK varchar(10)
dept_name UNIQUE varchar(100)

Employee
-
emp_no PK int
emp_title_id varchar(10) FK >- Title.title_id
birth_date date
first_name varchar(50)
last_name varchar(50)
sex char(1)
hire_date date

Title
-
title_id PK varchar(10)
title UNIQUE varchar(100)

Salary
-
emp_no PK int FK >- Employee.emp_no
salary int

Dept_Employee
-
emp_no PK int FK >- Employee.emp_no
dept_no PK varchar(10) FK >- Department.dept_no

Dept_Manager
-
dept_no PK varchar(10) FK >- Department.dept_no
emp_no PK int FK >- Employee.emp_no