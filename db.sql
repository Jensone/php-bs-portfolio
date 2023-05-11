CREATE DATABASE IF NOT EXISTS portfolio;

USE portfolio;

CREATE TABLE IF NOT EXISTS user (
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS about (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    bio TEXT NOT NULL,
    skills TEXT NOT NULL,
    hobbies TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS experience (
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    company VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS education (
    id INT(11) NOT NULL AUTO_INCREMENT,
    degree VARCHAR(255) NOT NULL,
    institution VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS projects (
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    skills TEXT NOT NULL,
    link VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user (username, password) VALUES (
    'admin',
    'password'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Gestionnaire de tâches',
    'Application web permettant de gérer des tâches avec une interface utilisateur intuitive et des fonctionnalités avancées de planification et de suivi des tâches.',
    'PHP, JavaScript, MySQL',
    'https://www.monprojet1.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Blog personnel',
    'Site web personnel avec un blog, une galerie de photos, une page de contact et un portfolio.',
    'HTML, CSS, JavaScript',
    'https://www.monprojet2.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Réseau social',
    'Application web de réseau social permettant aux utilisateurs de se connecter, de partager des publications et de communiquer avec d''autres utilisateurs.',
    'React, Node.js, MongoDB',
    'https://www.monprojet3.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Jeux vidéo en ligne',
    'Site web de jeux vidéo en ligne avec plusieurs jeux disponibles pour les joueurs, des classements et des tournois.',
    'HTML, CSS, JavaScript',
    'https://www.monprojet4.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Application de gestion de stock',
    'Application web de gestion de stock pour les entreprises, permettant de suivre les stocks, les commandes et les livraisons.',
    'React, Node.js, MongoDB',
    'https://www.monprojet5.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Application mobile de fitness',
    'Application mobile de fitness permettant aux utilisateurs de créer des séances d''entraînement personnalisées, de suivre leur progression et de communiquer avec des coachs en ligne.',
    'React Native, Node.js, MongoDB',
    'https://www.monprojet6.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Site web de voyage',
    'Site web de voyage avec des fonctionnalités de recherche de vols, de réservation d''hôtels et d''organisation d''itinéraires.',
    'HTML, CSS, JavaScript',
    'https://www.monprojet7.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Application de réservation de restaurant',
    'Application web de réservation de restaurant permettant aux utilisateurs de réserver une table, de consulter le menu et de payer en ligne.',
    'React, Node.js, MongoDB',
    'https://www.monprojet8.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Site web de musique',
    'Site web de musique avec des fonctionnalités de streaming audio, de création de playlists et de découverte de nouveaux artistes.',
    'HTML, CSS, JavaScript',
    'https://www.monprojet9.com'
);

INSERT INTO projects(title,description,skills,link) VALUES (
    'Application de réservation de transport',
    'Application mobile de réservation de transport permettant aux utilisateurs de réserver des taxis et des VTC.',
    'React Native, Node.js, MongoDB',
    'https://www.monprojet10.com'
);
