-- Ancienneté moyenne des employés en années
-- Cette requête calcule l’ancienneté moyenne des salariés à partir de leur date d’embauche.
-- Le nombre de jours écoulés depuis l’embauche est converti en années,
-- puis une moyenne est calculée sur l’ensemble des employés.
SELECT 
    ROUND(AVG((CURRENT_DATE - hire_date) / 365.0), 1) AS anciennete_moyenne_employees
FROM 
    employees;

-- Nombre d'absences par département
-- Cette requête permet de compter le volume total d'absences
-- dans chaque département en reliant les tables absences,
-- employees et departments.
-- Résultat observé : le département Ressources Humaines
-- est celui qui enregistre le plus grand nombre d'absences.
SELECT 
    department_name,
    COUNT(absence_id) AS nombre_absences
FROM absences
INNER JOIN employees
    ON absences.employee_id = employees.employee_id
INNER JOIN departments
    ON departments.department_id = employees.department_id
GROUP BY department_name;
	