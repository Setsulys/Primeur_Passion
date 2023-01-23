<html>

<head>
  <link rel='stylesheet' href='../employé.css' type='text/css' />
</head>

  <div style="text-align:center">
    <?php include("connexion2.inc.php"); ?>

    <h2>Presentation des commandes</h2>

    <?php

      $reponse = $cnx->query('SELECT * from COMMANDE');
    ?>

    <table style="text-align:center">
        <?php
        echo '<th>Code Client</th> <th>Montant Facture</th> <th>Nombre de colis</th>';
      while($donnee = $reponse->fetch()){
        echo '<tr><td>'.$donnee["codecli"]. ' </td>
              <td>'.$donnee["montantfac"]. ' </td>
              <td>'.$donnee["nbcolis"]. ' </td> </tr>';
      }
      ?>
      </table>

  </div>
</html>
