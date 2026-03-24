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

⚙️ Prérequis

Avant de lancer le projet, assure-toi d’avoir installé :

Docker
Kubernetes (Minikube ou cluster cloud)
Terraform
Ansible
Python 3.9+
Git
🔽 Cloner le projet
git clone https://gitlab.com/ouuivam/devops-project.git
cd devops-project/docker
🐳 Lancer l’application en local (Docker)
cd swap_app
docker build -t swap-flask-app .
docker run -p 5000:5000 swap-flask-app

👉 Accéder à l’application :
http://localhost:5000

☁️ Provisionner l’infrastructure (Terraform)
cd terraform
terraform init
terraform apply

👉 Cela crée les machines nécessaires (ex: AWS EC2)

⚙️ Configurer les machines (Ansible)
cd ../ansible
ansible-playbook -i inventory setup.yml

👉 Installe Docker et prépare l’environnement Kubernetes

☸️ Déployer sur Kubernetes
cd ../kubernetes
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

👉 Vérifier :

kubectl get pods
kubectl get services
🔄 Pipeline CI/CD (GitLab)

Le pipeline est défini dans .gitlab-ci.yml et comporte 3 étapes :

Build
Build et push de l’image Docker vers Docker Hub
Test
Exécution des tests avec pytest
Deploy
Déploiement automatique sur Kubernetes

👉 Le pipeline se déclenche automatiquement à chaque push sur main.

🧪 Lancer les tests
pytest tests
🔐 Variables CI/CD

Configurer dans GitLab :

DOCKER_USER
DOCKER_PASSWORD
KUBECONFIG_CONTENT

