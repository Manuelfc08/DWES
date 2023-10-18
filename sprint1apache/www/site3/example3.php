<html>
	<body>
		<h1>Jubilación</h1>
		<?php
			function edad_en_10_años($_GET){

				return $_GET + 10;
			}
			function mensaje($_GET){	
				if (edad_en_10_años($_GET) > 65){
				   return "En 10 años te jubilas afortunado!";

			        } else {

	      			   return "Mala suerte, a seguir chollando!";
				}

			 }
		?>
	   </body>
</html>
