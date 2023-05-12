<?php

/**
 * Path: projects.php
 * Page : Projects
 * Description : Page de présentation des projets
 */

require_once dirname(__FILE__) . '/data/bdd.php'; // Inclusion de la connexion à la base de données

include_once dirname(__FILE__) . '/partials/_head.php';
include_once dirname(__FILE__) . '/partials/_header.php';

?>

<?php
// Récupération des données de la table 'PROJECTS'
$projects = getData('PROJECTS');
?>

<div class="container">
    <div class="row align-items-md-stretch">


        <?php foreach ($projects as $project) : ?>
        <div class="col-md-6 mb-4">
            <div class="h-100 p-5 text-bg-dark rounded-3">
                <h2><?php echo $project['title'] ?></h2>
                <p><?php echo $project['description'] ?></p>
                <p><i class="devicon-php"></i></p>
                <a href="<?php echo $project['link'] ?>" class="btn btn-primary">Voir le projet</a>
            </div>
        </div>
        <?php endforeach; ?>




        <!-- <div class="col-md-6">
            <div class="h-100 p-5 bg-body-tertiary border rounded-3">
                <h2>Add borders</h2>
                <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>
                <button class="btn btn-outline-secondary" type="button">Example button</button>
            </div>
        </div> -->
    </div>
</div>


<?php include_once dirname(__FILE__) . '/partials/_footer.php'; ?>