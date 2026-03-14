# 📊 Analyse SQL de données RH — Projet SIRH

## Présentation

Ce projet consiste à modéliser et analyser un jeu de données RH à l'aide de SQL.

L'objectif est de démontrer comment SQL peut être utilisé pour :

- structurer des données RH dans une base relationnelle
- simuler un dataset RH réaliste
- analyser des indicateurs RH
- produire des requêtes analytiques
- vérifier la cohérence et la qualité des données

Le projet reproduit des problématiques courantes rencontrées dans les environnements **SIRH / HRIS**.

Les données utilisées sont simulées et représentent **un échantillon d'employés** afin de permettre l'exploration et l'analyse de données RH.

---

## Contexte métier

Entreprise fictive : **NovaTech**

L'entreprise dispose de plusieurs départements et suit les données RH de ses collaborateurs dans un système d'information RH.

Les équipes RH souhaitent exploiter les données du SIRH afin de produire des indicateurs de pilotage tels que :

- effectif par département
- répartition des collaborateurs
- ancienneté moyenne
- suivi des absences
- analyse de la structure organisationnelle

Ce projet simule ces données afin de reproduire des analyses RH typiques réalisées dans un environnement **HR analytics**.

---

## Modèle de données

La base de données repose sur une structure relationnelle composée des tables suivantes :

### `departments`
Référentiel des départements de l'entreprise.

| colonne |
|-------|
department_id  
department_name  

---

### `employees`
Informations collaborateurs.

| colonne |
|-------|
employee_id  
first_name  
last_name  
hire_date  
department_id  

---

### `absences`
Suivi des absences des collaborateurs.

| colonne |
|-------|
absence_id  
employee_id  
start_date  
end_date  
absence_type  
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
