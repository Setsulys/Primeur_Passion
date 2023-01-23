<?php

try {
    $cnx = new PDO('pgsql:host=sqletud.u-pem.fr; dbname=flousado_db', 'flousado', 'fabio');
}
catch (PDOException $e) {
    echo "ERREUR : La connexion a échouée";
}


?>
