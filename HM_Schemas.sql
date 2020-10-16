Drop Table IF exists employees;
CREATE TABLE "employees"(
    "emp_no" INT Primary Key NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR (50)  NOT NULL,
    "last_name" VARCHAR (40)  NOT NULL,
    "gender" VARCHAR (20)  NOT NULL,
    "hire_date" DATE     
);
SELECT * FROM employees

Drop Table IF exists departments;
CREATE TABLE "departments" (
    "dept_no" VARCHAR (40)  NOT NULL,
    "dept_name" VARCHAR (50)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);
SELECT * FROM departments;

Drop Table IF exists dept_emp;
CREATE TABLE "dept_emp" (
	"emp_no" INT   NOT NULL,
    "dept_no" VARCHAR (50)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE,
	Foreign Key (emp_no)references employees (emp_no),
	Foreign Key (dept_no)references departments (dept_no),
-- 	"id" serial Primary Key
);

SELECT * FROM dept_emp; 

Drop Table IF exists dept_manager;
CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR (40)  NOT NULL,
	"emp_no" INT NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE,
	Foreign Key (emp_no)references employees(emp_no),
	Foreign Key (dept_no)references departments (dept_no),
-- 	"id" serial Primary Key
);
SELECT * FROM dept_manager;

Drop Table IF exists salaries;
CREATE TABLE "salaries" (
	"emp_no" INT  NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE,
	Foreign Key (emp_no)references employees (emp_no),
-- 	"id" serial Primary Key
);
SELECT * FROM salaries;

Drop Table IF exists titles;
CREATE TABLE "titles" (
	"emp_no" INT   NOT NULL,
    "title" VARCHAR (50)  NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE,
	Foreign Key (emp_no)references employees (emp_no),
-- 	"id" serial Primary Key
);
SELECT * FROM titles;


-- Import data from CSV files: