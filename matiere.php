<?php
require("./connexion.php");
$req = $bdd->prepare('SELECT * FROM matiere');
$req->execute();
$id_matiere = array();
while ($donnees = $req->fetch())
{
	echo '<th>  ' . $donnees['nom_matiere'] .'  </th>';
	$id_matiere[] = $donnees['id_matiere'];
}
$req->closeCursor();

?>