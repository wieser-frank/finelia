$(document).ready(function() {
	 $.ajax({
       url : 'liste_matiere.php',
	   type : 'POST',
       data : 'id_etudiant=' +  $( "#etudiant" ).find('option')[0].value,
       dataType : 'html',
       success : function(code_html, statut){
		   $( "#matiere" ).append(code_html);
       }
    });
});

function getval(sel) {
	       $.ajax({
       url : 'liste_matiere.php',
	   type : 'POST',
       data : 'id_etudiant=' + sel.value,
       dataType : 'html',
       success : function(code_html, statut){
		   $( "#matiere" ).find('option').remove();
		   $( "#matiere" ).append(code_html);
       }
    });
}

$( "#addval" ).click(function(){
	$( "#clone" ).clone(true).appendTo( "#formulaire" );
});
	