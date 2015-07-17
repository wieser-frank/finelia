<?php
require("./connexion.php");
$req = $bdd->prepare('SELECT * FROM etudiant');
$req->execute();
while ($donnees = $req->fetch())
{
	echo '<tr> ';
	echo '<td>  ' . $donnees['nom'] . ' ' . $donnees['prenom'] . '  </td>';
	for($i = 0; $i < count($id_matiere); $i++)
	{
		$coefficient_total = 0;
		$note = 0;
		$moyenne = $bdd->prepare('SELECT coefficient, note FROM note WHERE id_etudiant=' . $donnees["id_etudiant"] . ' AND id_matiere=' . $id_matiere[$i]);
		$moyenne->execute();
		while ($value = $moyenne->fetch())
		{
			$coefficient_total += $value["coefficient"];
			$note += ($value["coefficient"] *  $value["note"]);
		}
		if ($coefficient_total != 0)
			echo '<td>  ' . round($note / $coefficient_total, 2) . '  </td>';
		else
			echo '<td>  Pas de note  </td>';
	}
	echo '</tr> ';
}
?>