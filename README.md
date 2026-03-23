##  Description du projet

Ce projet est une application web e-commerce développée avec Flask, intégrée dans une architecture DevOps complète permettant l’automatisation du déploiement, de l’infrastructure et des tests.

L’objectif principal est de mettre en place une chaîne CI/CD complète allant du développement local jusqu’au déploiement sur un cluster Kubernetes, en utilisant des outils modernes de DevOps.


##  Technologies utilisées

* Backend : Flask (Python)
* Base de données : SQLite
* Conteneurisation : Docker
* Infrastructure as Code : Terraform
* Configuration des serveurs : Ansible
* Orchestration : Kubernetes (k3s)
* CI/CD : GitLab CI
* Tests : Pytest



## Fonctionnalités principales

* Application e-commerce (gestion produits, panier, utilisateurs)
* Authentification avec Flask-Login
* Upload d’images produits
* Envoi d’emails
* Paiement intégré (Stripe)



## Pipeline DevOps

Le projet suit les étapes suivantes :

1. Développement de l’application Flask
2. Conteneurisation avec Docker
3. Tests automatisés avec Pytest
4. Build et push de l’image Docker via GitLab CI
5. Provisionnement des machines avec Terraform (AWS)
6. Configuration automatique avec Ansible
7. Déploiement sur Kubernetes (k3s)



## Tests

Des tests automatisés sont implémentés avec Pytest pour vérifier le bon fonctionnement de l’application, notamment les routes principales.



## Déploiement

* Création d’infrastructure cloud avec Terraform
* Configuration des serveurs avec Ansible
* Déploiement de l’application sur un cluster Kubernetes
* Exposition via service Kubernetes



## Objectif

Ce projet a pour but de démontrer la maîtrise d’une chaîne DevOps complète, incluant :

* CI/CD
* Infrastructure as Code
* Containerisation
* Orchestration Kubernetes



