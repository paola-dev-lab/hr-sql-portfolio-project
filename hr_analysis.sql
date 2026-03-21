-- Objectif : mesurer l’ancienneté moyenne des employés
-- afin d’obtenir une vision synthétique de la stabilité des effectifs.
-- Contexte métier : en RH, cet indicateur permet d’évaluer
-- le niveau moyen d’expérience présent dans l’entreprise
-- et d’apporter un premier éclairage sur la fidélisation des collaborateurs.
SELECT 
    ROUND(AVG((CURRENT_DATE - hire_date) / 365.0), 1) AS anciennete_moyenne_employees
FROM 
    employees;

-- Objectif : mesurer le volume d'absences par département
-- afin d’identifier les services les plus concernés.
-- Contexte métier : dans un environnement RH, ce type d’analyse
-- aide à repérer d’éventuels déséquilibres entre départements
-- et à orienter plus finement le suivi de l’absentéisme.
-- Résultat observé : le département Ressources Humaines
-- enregistre le plus grand nombre d'absences.
SELECT 
    department_name,
    COUNT(absence_id) AS nombre_absences
FROM absences
INNER JOIN employees
    ON absences.employee_id = employees.employee_id
INNER JOIN departments
    ON departments.department_id = employees.department_id
GROUP BY department_name;

--objectf: identifier les employees les plus anciens de l'entreprise
-- Contexte métier: permet de repérer les collaborateurs avec le plus d'ancienneté
--souvent associés à une forte connaissance de l'organisation ou à ds enjeux de fidélisation
SELECT
	first_name,
	last_name,
	hire_date
FROM
	employees
ORDER BY 
	hire_date LIMIT 10;

--objectif: mesurer l'ancienneté des employés les plus anciens
--l'ancienneté est un indicateur clé en RH pour analyser la retention,
--identifier les profils expériemntés et antciper les départs potentiels (ex, retraite)
SELECT
	first_name,
	last_name,
	hire_date
FROM
	employees
ORDER BY 
	hire_date LIMIT 10;