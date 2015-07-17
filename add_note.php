<?php
require("./connexion.php");
$req = $bdd->prepare('INSERT INTO note (coefficient,note,id_etudiant,id_matiere) VALUES(:coefficient,:note,:etudiant,:matiere)');
$req->bindParam(':coefficient', $coefficient);
$req->bindParam(':note', $note);
$req->bindParam(':etudiant', $etudiant);
$req->bindParam(':matiere', $matiere);
$etudiant = (int)$_POST["etudiant"];
$matiere = (int)$_POST["matiere"];
for($i = 0; $i < count($_POST["note"]); $i++)
{
	$coefficient = $_POST["coefficient"][$i];
	$note = $_POST["note"][$i];
	$req->execute();
}
$req->closeCursor();
 header('Location: index.php');
 ?>