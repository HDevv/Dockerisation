# Dockerisation (Hicham ROLDAN)

# 🐳 Compagnie Gourmande - Affichage des Employés

Bienvenue dans le projet **Compagnie Gourmande**. Ce projet est une simple application web Dockerisée affichant les employés d'une entreprise. Il comprend un **frontend**, un **backend**, et une base de données **MySQL**, gérés via **Docker Compose**.

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

Ce projet permet d'afficher une liste d'employés, comprenant leur nom, prénom et email. Il est structuré de la manière suivante :

- **Frontend :** Une interface utilisateur tout ce qu'il y a de plus simple développée avec HTML/CSS et servie via **Nginx**.
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

Installer les dépendances
```bash
npm install
```

# 🚀 Étapes pour lancer l'application 

## 1. Construire et démarrer les conteneurs 📦

Placez-vous dans le dossier contenant le fichier `docker-compose.yml`.  
Exécutez la commande suivante :

```bash
docker-compose up --build
```

Cette commande :
- Construit les images Docker pour le frontend, le backend, et la base de données.
- Lance tous les conteneurs définis dans `docker-compose.yml`.

---

## 2. Vérifier que tout est en cours d'exécution ✅

Une fois les conteneurs démarrés, vérifiez leur statut avec :

```bash
docker ps
```

Vous devriez voir trois conteneurs : `frontend`, `backend`, et `db`.

---

## 3. Accéder à l'application 🌐

Ouvrez un navigateur et accédez aux URL suivantes :

### Frontend (application principale) :
```text
http://localhost:8080
```
Vous devriez voir votre page HTML principale.

### Backend API :
```text
http://localhost:3000
```
Vous verrez le message : **Bienvenue sur l'API**.

---

## 4. Interagir avec la base de données 🧱

Pour interagir avec MySQL dans le conteneur :

```bash
docker exec -it db mysql -u root -p
```

Entrez le mot de passe MySQL défini dans `docker-compose.yml` pour accéder à la base.

---

## Pour vérifier que l'application est Dockerisée 🐋

Exécutez la commande suivante :

```bash
docker ps
```

Vous devriez voir trois conteneurs : `frontend`, `backend`, et `db`.  
Cela confirme que l'application tourne à l'intérieur de conteneurs Docker.

### Testez les URL sur les ports :
- **Frontend**: `http://localhost:8080`  
- **Backend**: `http://localhost:3000/api`

Si ces URLs fonctionnent, l'application est correctement Dockerisée et opérationnelle.

---

## Arrêter l'application ⛔

Pour arrêter les conteneurs :

```bash
docker-compose down
```

Cela arrête et supprime tous les conteneurs sans affecter les volumes ou les images.

RAPPEL: Accès au site via http://localhost:8080
