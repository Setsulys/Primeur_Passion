<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../employé.css"/>
  </head>

  <div class="commande">

  <h1>COMMANDE</h1>

  <?php if(!isset($_GET["Envoyer"]) AND !isset($_GET["Valider"])){?>
  <form action="insertCommande.php" method="GET">
    Combien d'article souhaitez-vous ? <input type="number" name="nbligne">
    <input type="submit" name="Envoyer">
  </form>
  <?php

  }

  elseif(!isset($_GET["Valider"])){
    include("connexion2.inc.php");
    $reponse1 = $cnx->query('select codecli, nom from CLIENT');
  ?>
  <form action="insertCommande.php" method="GET">
    <select name="codecli">
      <?php
       while($donnee = $reponse1->fetch()){
      ?>
        <option value="<?php echo $donnee["codecli"];?> "> <?php echo $donnee["codecli"].' nom '.$donnee["nom"]; ?> </option>
      <?php
        }
      ?>
      </select><br><br>

  <?php
    $nbligne = $_GET["nbligne"];

    for($i=0; $i<$nbligne; $i++){ ?>
        <select name="article">
        <?php
        $reponse = $cnx->query('select variete, calibre from ARTICLE');
        $reponse2 = $cnx->query('select prenom from EMPLOYE');
        while($donnees = $reponse->fetch()){
        ?>
          <option value="<?php echo $donnees["variete"].$donnees["calibre"]; ?> "> <?php echo $donnees["variete"].' cal '.$donnees["calibre"]; ?> </option>
        <?php } ?>
    </select>

      quantite<input type="number" name="qte" min="0" max="10">  <br>

    <?php } ?>
    <br>
      <select name="prenom">
        <?php
        while($donnees = $reponse2->fetch()){
          ?>
        <option value="<?php echo $donnees["prenom"]; ?> "><?php echo $donnees["prenom"]; ?></option>
          <?php
        }
        ?>
    </select> <br> <br>
    numero tournee <input type="text" name="tourne">
    nombre de colis <input type="text" name="nbcolis">
    monatnt facture <input type="text" name="montant">

    <input type="submit" name="Valider">

    </form>
    <?php
    }

    else if(isset($_GET["Valider"])){

      include("connexion2.inc.php");


      $prenom = $_GET["prenom"];
      $tournee = $_GET["tourne"];
      $nbcolis = $_GET["nbcolis"];
      $montant = $_GET["montant"];
      $codecli = $_GET["codecli"];



      $insert = $cnx->prepare('INSERT INTO COMMANDE (prenom, numtourne, nbcolis, montantfac, codecli)
      values (:prenom, :numtourne, :nbcolis, :montantfac, :codecli)');

      if(isset($prenom) and ($tournee != NULL) and ($nbcolis != NULL )and ($montant != NULL) and ($codecli != NULL)){
        $insert->execute(array(
          ':prenom' => $prenom,
          ':numtourne' => $tournee,
          ':nbcolis' => $nbcolis,
          ':montantfac' => $montant,
          ':codecli' => $codecli
          )
        );
        echo 'la commande a bien été creer';
      }
      else{
        echo "erreur"; ?><br><?php
        echo "veuillez renseigner tous les champs";
      }
    }
    include("menu2.php");

    ?>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    </div>
  </html>
