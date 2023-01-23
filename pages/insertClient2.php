<head>
    <link rel='stylesheet' href='../primeurpassion.css' type='text/css' />
  </head>

<?php

  include("header.php");

  include("connexion2.inc.php");

  $query = 'INSERT INTO CLIENT values (:codecli, :nom, :adresse, :telephone, :nomtarif)';

  if(isset($_POST["Valider"])){

    $insert = $cnx->prepare($query);
    $insert->execute(array(
      ':codecli' => $_POST["codecli"],
      ':nom' => $_POST["nom"],
      ':adresse' => $_POST["adresse"],
      ':telephone' => $_POST["telephone"],
      ':nomtarif' => $_POST["nomtarif"]
      )
    );

    echo 'le client a bien été ajouté';
  }

include("menu2.php")

?>
