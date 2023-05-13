<?php

/**
 * Path: about.php
 * Page: About
 * Description: Page à propos
 */

require_once dirname(__FILE__) . '/data/bdd.php'; // Inclusion de la connexion à la base de données

include_once dirname(__FILE__) . '/partials/_head.php';
include_once dirname(__FILE__) . '/partials/_header.php';

// Récupération des données de la table 'ABOUT', 'EDUCATION' et 'EXPERIENCE'
$about = getData('ABOUT');
$education = getData('EDUCATION');
$experience = getData('EXPERIENCE');
?>

<div class="container">
    <div class="px-4 py-5 my-5 text-center">
        <img class="d-block mx-auto mb-4 rounded-circle" src="/assets/images/profile.jpeg" alt="<?php echo $about[0]['name'] ?>" width="400">
        <h1 class="display-5 fw-bold text-body-emphasis"><?php echo $about[0]['name'] ?></h1>
        <h3><?php echo $about[0]['title'] ?></h3>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-4"><?php echo $about[0]['bio'] ?></p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Télécharger mon CV</button>
            </div>
        </div>
    </div>
    <hr>
    <h3>Mon parcours académique</h3>
    <div class="row">
        <div class="col">
        <?php foreach($education as $diploma) : ?>
            <div class="">
                <h4><?php echo $diploma['degree'] ?></h4>
                <h5>École : <?php echo $diploma['institution'] ?></h5>
                <p>Du <?php echo $diploma['start_date'] ?> au <?php echo $diploma['end_date'] ?></p>
                <p><?php echo $diploma['description'] ?></p>
            </div>
        <?php endforeach; ?>
        </div>
        <div class="col">
        <?php foreach($experience as $job) : ?>
            <div class="">
                <h4><?php echo $job['title'] ?></h4>
                <h5>École : <?php echo $job['company'] ?></h5>
                <p>Du <?php echo $job['start_date'] ?> au <?php echo $diploma['end_date'] ?></p>
                <p><?php echo $job['description'] ?></p>
            </div>
        <?php endforeach; ?>
        </div>
    </div>
</div>


<?php include_once dirname(__FILE__) . '/partials/_footer.php'; ?>