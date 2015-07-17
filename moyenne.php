<!doctype html>
<html>

  <head>
     <title>Ajouter note</title>
	 <meta charset="UTF-8">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </head>

  <body>
	<table id="table-moy" class="col-md-8 col-md-offset-3">
		<thead>
		<tr>
			<th> étudiant </th>
			<?php require("./matiere.php") ?>
		</tr>
		</thead>
		<tbody>
			<?php require("./calc_moyenne.php") ?>
		</tbody>
	</table>
  </body>

</html>