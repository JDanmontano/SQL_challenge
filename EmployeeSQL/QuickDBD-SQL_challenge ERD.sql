-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Pll2KL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "Emp_no" INT   NOT NULL,
    "Emp_title_id" INT   NOT NULL,
    "Birth_date" INT   NOT NULL,
    "First_name" VARCHAR(255)   NOT NULL,
    "Last_name" VARCHAR(255)   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_date" INT   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no","Emp_title_id"
     )
);

CREATE TABLE "Salaries" (
    "Emp_no" INT   NOT NULL,
    "Salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Dept_manager" (
    "Dept_no" INT   NOT NULL,
    "Emp_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "Dept_no","Emp_no"
     )
);

CREATE TABLE "Titles" (
    "Title_id" VARCHAR(255)   NOT NULL,
    "Title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_id"
     )
);

CREATE TABLE "Departments" (
    "Dept_no" INT   NOT NULL,
    "Dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "Emp_no" INT   NOT NULL,
    "Dept_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "Emp_no","Dept_no"
     )
);

