-- =============================
-- BASIC QUERIES
-- =============================

--aficher tous les employés
SELECT *
FROM 
	employees;

-- nombre total d'employés
SELECT COUNT(*) 
FROM 
	employees;

--nombre total d'absences
SELECT COUNT(*) 
FROM 
	absences;

--employés triés par date d'embauche 
SELECT 
	employee_id, 
	first_name, 
	last_name, 
	hire_date
FROM 
	employees
ORDER BY 
	hire_date;

--effectif par département
SELECT 
	department_id, 
		COUNT (employee_id) AS effectif_par_departement
FROM
	employees
GROUP BY 
	department_id;

--absence par type d'absence 
SELECT	
	absence_type, 
		COUNT(absence_id) AS absences_par_type
FROM
	absences
GROUP BY
	absence_type;

--======================
--JOIN QUERIES
--======================

-- Employées avec leur départment
SELECT
	first_name,
	last_name,
	department_name
FROM
	employees
INNER JOIN
	departments
	ON employees.department_id = departments.department_id;

--effectif par départmement
SELECT
	department_name,
		COUNT (employee_id) AS effectif
FROM 
	employees
INNER JOIN
	departments 
		ON departments.department_id = employees.department_id
GROUP BY 
	department_name;