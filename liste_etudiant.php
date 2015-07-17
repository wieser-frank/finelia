<?php
require("./connexion.php");
$req = $bdd->prepare('SELECT * FROM etudiant');
$req->execute();

while ($donnees = $req->fetch())
{
	echo '<option value="'. $donnees['id_etudiant'] .'">' . $donnees['nom'] . ' ' . $donnees['prenom'].'</option>';
}
$req->closeCursor();
?>