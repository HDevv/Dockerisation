# Dockerisation
Accès au site via http://localhost:8080

# 🐳 Compagnie Gourmande - Gestion des Employés

Bienvenue dans le projet **Compagnie Gourmande**. Ce projet est une application web Dockerisée permettant de gérer les employés d'une entreprise. Il comprend un **frontend**, un **backend**, et une base de données **MySQL**, orchestrés via **Docker Compose**.

---

## 📝 Table des matières

- [Aperçu](#-aperçu)
- [Technologies](#-technologies)
- [Prérequis](#-prérequis)
- [Installation et démarrage](#-installation-et-démarrage)
- [Structure du projet](#-structure-du-projet)
- [Fonctionnalités](#-fonctionnalités)
- [API Documentation](#-api-documentation)
- [Améliorations futures](#-améliorations-futures)
- [Auteur](#-auteur)

---

## 🌐 Aperçu

Ce projet permet d'afficher et de gérer une liste d'employés, comprenant leur nom, prénom, email, salaire, et service. Il est structuré de la manière suivante :

- **Frontend :** Une interface utilisateur simple développée avec HTML/CSS et servie via **Nginx**.
- **Backend :** Une API REST construite avec **Node.js** et **Express.js**.
- **Base de données :** Une base MySQL contenant les informations des employés et des services.

---

## 🛠️ Technologies

Les principales technologies utilisées dans ce projet sont :

- **Frontend :** Nginx, HTML, CSS.
- **Backend :** Node.js, Express.js.
- **Base de données :** MySQL.
- **Docker :** Conteneurisation des services et orchestration via Docker Compose.

---

## 📋 Prérequis

Avant de commencer, assurez-vous d'avoir installé :

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/install/)

Vérifiez les installations :

```bash
docker --version
docker-compose --version
```
