<html>

<head>
    <link rel='stylesheet' href='../employé.css' type='text/css' />
</head>

<?php include("header.php") ?>

  <head>
      <title>Espace Employe</title>
      <meta charset="UTF-8">
  </head>
		<h1>Connexion Espace Employé</h1>
  <form name=formulaire  method="GET" action="connexion.inc.php">
    identifiant: <br><input type="text" name="user"/></br>
    mot de passe:<br><input type="password" name="pass"/></br></br>
    <input type="submit" name="Valider"/>
    <input type="reset" name="Réinitialiser"/>
  </form>

</html>