CREATE TABLE department (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE title (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE employee (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL CHECK (sex IN ('M', 'F')),
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE salary (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE dept_employee (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);