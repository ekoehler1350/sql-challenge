-- Create Departments Table 
create table departments(
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

SELECT * FROM departments

-- Create titles table 
CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL
);
SELECT * FROM titles 

--Create employees table 
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) Not NULL,
	last_name VARCHAR(40)Not NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);
ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
ALTER TABLE ONLY employees 
	ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES titles (title_id); 


SELECT * FROM employees

--Create Salaries Table  
create table salaries ( 
	emp_no INT PRIMARY KEY NOT NULL, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

--Create dept_manager table 
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager 

--Create dept_employee table 
CREATE TABLE dept_employee (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_employee



