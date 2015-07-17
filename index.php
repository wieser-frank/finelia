<!doctype html>
<html>

  <head>
     <title>Ajouter note</title>
	 <meta charset="UTF-8">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </head>

  <body>
	<form id="formulaire" method="post" class="form-horizontal" action="add_note.php">
		<div class="form-group">
			<label class="col-xs-3 control-label">etudiant</label>
			<div class="col-xs-5 selectContainer">
				<select name="etudiant" id="etudiant" class="form-control" onchange="getval(this);">
					<?php require("./liste_etudiant.php"); ?>
				</select>
			</div>
		</div>   
		 <div class="form-group">
			<label class="col-xs-3 control-label">matiere</label>
			<div class="col-xs-5 selectContainer">
				<select name="matiere" id="matiere" class="form-control">
				</select>
			</div>
		</div>
		<div class="col-md-4 col-md-offset-3" id="clone">
			<div class="form-group">
				<label class="col-xs-3 control-label">coefficient</label>
				<input type="number" name="coefficient[]" class="col-xs-5" min="1" id="coefficient" placeholder="coefficient" required>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">note</label>
				<input type="number" name="note[]" class="col-xs-5" min="0" max="20" id="note" placeholder="note" required>
			</div>
		</div>
		<div class="col-md-4 col-md-offset-3" id="add">
			<div class="form-group">
				<button type="submit" class="btn btn-success">Envoyer</button>
			</div>
		</div>
	</form>

			<button class="btn btn-primary " id="addval">ajouter note</button>
	
		<a href="moyenne.php" class="btn btn-info" role="button">Moyenne</a>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
     <script type="text/javascript" src="script.js"></script>
  </body>

</html>