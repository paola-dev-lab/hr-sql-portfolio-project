-- Ancienneté moyenne des employés en années
-- Cette requête calcule l’ancienneté moyenne des salariés à partir de leur date d’embauche.
-- Le nombre de jours écoulés depuis l’embauche est converti en années,
-- puis une moyenne est calculée sur l’ensemble des employés.
SELECT 
    ROUND(AVG((CURRENT_DATE - hire_date) / 365.0), 1) AS anciennete_moyenne_employees
FROM 
    employees;
	