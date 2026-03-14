CREATE TABLE departments (
	department_id	SERIAL PRIMARY KEY,
	department_name	VARCHAR(20) NOT NULL
);

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name	VARCHAR(10)	NOT NULL,
	last_name	VARCHAR(10)	NOT NULL,
	hire_date	DATE	NOT NULL,
	department_id INT REFERENCES departments(department_id)
);

CREATE TABLE absences (
	absence_id	SERIAL PRIMARY KEY,
	employee_id	INT REFERENCES employees(employee_id),
	start_date	DATE	NOT NULL,
	end_date	DATE	NOT NULL,
	absence_type VARCHAR(50) NOT NULL
);