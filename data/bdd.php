<?php 
/**
 * Gestion des requêtes SQL
 * C : Create (INSERT INTO)
 * R : Read (SELECT)
 * U : Update (UPDATE)
 * D : Delete (DELETE)
 */

 require_once 'connexion.php'; // Inclusion de la connexion à la base de données

 
 function getData(string $table) {
     $requeteSql = 'SELECT * from ' . $table; 
     $resultat = connexion()->query($requeteSql); 
     $preparation = $resultat->fetchAll(PDO::FETCH_ASSOC);
     var_dump($preparation);
}

// Lancement de la fonction getData() avec la table 'PROJECTS' en paramètre
getData('PROJECTS');