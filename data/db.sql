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

INSERT INTO education (degree, institution, start_date, end_date, description)
VALUES 
   ('Master en Informatique', 'Université de Paris', '2009-09-01', '2011-06-30', 'Programme axé sur les systèmes distribués et les réseaux'),
   ('Licence en Mathématiques', 'Université de Lyon', '2006-09-01', '2009-06-30', 'Programme de mathématiques avancées avec une spécialisation en théorie des nombres'),
   ('Baccalauréat scientifique', 'Lycée Jean Moulin', '2003-09-01', '2006-06-30', 'Programme général en sciences avec une spécialisation en mathématiques et physique');

INSERT INTO experience (poste, entreprise, date_debut, date_fin, description) VALUES 
('Développeur Full-Stack', 'XYZ Corporation', '2020-01-01', '2023-05-31', 'Travaillé en tant que développeur Full-Stack, avec une expertise en React, Node.js et MySQL.'),
('Stagiaire Développeur Web', 'ABC Startup', '2018-06-01', '2018-09-30', 'Stage en tant que développeur web, travaillant sur des projets HTML, CSS et JavaScript.'),
('Assistant Marketing Digital', 'DEF Entreprise', '2016-09-01', '2017-06-30', 'Assisté l\'équipe de marketing digital dans l\'analyse de données et la création de contenu pour les réseaux sociaux.'),
('Analyste de Données', 'GHI Consulting', '2013-07-01', '2015-12-31', 'Responsable de l\'analyse de données pour plusieurs clients, avec une expertise en SQL et en visualisation de données.'),
('Stagiaire Ingénieur Logiciel', 'JKL Solutions', '2009-05-01', '2009-08-31', 'Stage en tant qu\'ingénieur logiciel, travaillant sur des projets Java et C++.');

INSERT INTO ABOUT (name, title, bio, skills, hobbies) VALUES 
('John Doe', 'Développeur Web', 'Je suis un développeur passionné par les technologies web...', 
'["PHP", "JavaScript", "React", "Node.js", "MongoDB", "GraphQL"]', 
'["Lecture", "Voyages", "Photographie"]');
