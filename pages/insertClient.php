<html>
<head>
    <link rel="stylesheet" type="text/css" href="../employé.css"/>
  </head>


<h2>Inserer un nouveau client</h2>

  <form action="insertClient2.php" method="POST">
    Code Client <input type="text" name="codecli"><br>
    NOM <input type="text" name="nom"><br>
    Adresse <input type="text" name="adresse"><br>
    Telephone <input type="text" name="telephone"><br>
    Categorie
    <?php

          include("connexion2.inc.php");

          $reponse = $cnx->query('select nomtarif from CATEGORIECLI');
      ?>

      <select name="nomtarif">

      <?php
        while($donnees = $reponse->fetch()){
          ?>
          <option value="<?php echo $donnees["nomtarif"]; ?>"> <?php echo $donnees["nomtarif"]; ?> </option>
          <?php
        }
					?>
    </select><br><br>

    <input type="submit" name="Valider">
    <input type="reset" name="Reinitialiser">
  </form>

  <?php $cnx->closeCursor();
  include("menu2.php");
  ?>

</html>
