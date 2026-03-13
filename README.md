📊 # Analyse SQL de données RH – Projet SIRH

## Présentation

Ce projet simule un système d'information RH (SIRH) pour une entreprise de 250 salariés.

L'objectif est de démontrer comment SQL peut être utilisé pour :

- structurer des données RH
- analyser des indicateurs RH
- produire des requêtes analytiques
- vérifier la qualité des données dans un contexte SIRH

Le projet reproduit des problématiques courantes rencontrées dans les environnements RH et HRIS.

---

## Contexte métier

Entreprise fictive : **NovaTech**

- 250 salariés
- plusieurs départements
- plusieurs sites en France
- différents types de contrats
- suivi des absences
- historique des salaires

L'équipe RH souhaite exploiter les données du SIRH afin de produire des indicateurs de pilotage :

- effectif
- turnover
- ancienneté
- absentéisme
- structure des contrats
- analyse salariale

  ---

## Modèle de données

La base de données contient les tables suivantes :

### employees
Informations collaborateurs

- employee_id
- employee_number
- first_name
- last_name
- gender
- birth_date
- hire_date
- termination_date
- department_id
- job_title_id
- location_id
- manager_id
- employment_status

### departments
Référentiel des départements.

### job_titles
Référentiel des postes et niveaux de rôle.

### locations
Sites de l'entreprise.

### contracts
Historique contractuel des salariés.

### absences
Suivi des absences collaborateurs.

### employee_salary_history
Historique des rémunérations.

 ---
 
## Structure du projet
``` 
├── schema.sql
├── seed.sql
├── queries.sql
├── data_quality_checks.sql
└── README.md
 ```
 ---
## Compétences mises en œuvre

- SQL
- modélisation de données
- analyse de données RH
- jointures et agrégations
- calcul d'indicateurs RH
- contrôle de qualité des données
- structuration d'un projet data

---
## Auteur
Projet réalisé dans le cadre d'un portfolio orienté **SIRH / HR Tech / analyse de données RH**.
