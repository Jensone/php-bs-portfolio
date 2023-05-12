<?php 
/**
 * Gestion de la connexion à la base de données
 * @return PDO
 */

// Informations de connexion sous forme de constantes
define('HOST', 'localhost');
define('NAME', 'portfolio');
define('USER', 'root');
define('PASS', 'root'); // root pour mac et linux, '' pour windows


/**
 * Traduction du code en français :
 * "Essaie (try) de te connecter ($pdo) à la base de données
 * et retourne l'objet de connexion (return), 
 * si tu n'y arrives pas (catch), affiche le message d'erreur (PDOException $error)"
 */

function connexion() {
    try { 
        $pdo = new PDO("mysql:dbname=".NAME.";host=".HOST,USER,PASS); 
        return $pdo;
    } catch(PDOException $error) {
            printf("Échec de la connexion : %s\n", $error->getMessage()); // Affiche le message d'erreur
            exit();
    }
}