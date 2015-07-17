<?php
require("./connexion.php");
$req = $bdd->prepare('SELECT id_matiere FROM participe WHERE id_etudiant=' . $_POST["id_etudiant"]);
$req->execute();

while ($donnees = $req->fetch())
{
	$req_tmp = $bdd->prepare('SELECT nom_matiere FROM matiere WHERE id_matiere="' . $donnees["id_matiere"] . '"');
	$req_tmp->execute();
	$value = $req_tmp->fetch();
	echo '<option value="'. $donnees["id_matiere"] .'">' . $value['nom_matiere'] .'</option>';
	$req_tmp->closeCursor();
}
$req->closeCursor();

?>