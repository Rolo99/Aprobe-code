<!-- Este código hace una  lectura de la base dde datos bdpiaat2
	Lo extraído lo genera como un archivo JSON queserá leído desde la base de datos Aprobe
-->

<?php 

	include ("CADusuario.php");
	$cad = new CADusuario();

	$listaEstudiantes = $cad->consular_Matricula();
	$post = array();
	$response = array();
	while($row = $listaEstudiantes->fetch_assoc()){
		$sexo = $row["sexo"];
		$IDescolaridad = $row["IDescolaridad"];
		$Beca = $row["Beca"];
		$edad = $row["edad"];
		$codigo = $row["codigo"];
		$primerApellido =   htmlentities($row["primerApellido"],ENT_NOQUOTES | ENT_IGNORE,"UTF-8");
		$segundoApellido = htmlentities($row["segundoApellido"],ENT_NOQUOTES | ENT_IGNORE,"UTF-8");
		$nombre = htmlentities($row["nombre"],  ENT_QUOTES | ENT_IGNORE, "UTF-8");
		$idParentesco = $row["idParentesco"];
		$telefonoHogar = $row["telefonoHogar"];
		$cedula = $row["cedula"];
		$fechaNac = $row["fechaNac"];
		$numNivel = $row["numNivel"];
		$post[] = array("sexo"=>$sexo,
				   "IDescolaridad"=>$IDescolaridad,
				   "Beca"=>$Beca,
				   "edad"=>$edad,
				   "codigo"=>$codigo,
				   "primerApellido"=>$primerApellido,
				   "segundoApellido"=>$segundoApellido,
				   "nombre"=>$nombre,
				   "idParentesco"=>$idParentesco,
				   "telefonoHogar"=>$telefonoHogar,
				   "cedula"=>$cedula,
				   "fechaNac"=>$fechaNac,
				   "numNivel"=>$numNivel);

		print $row["nombre"].' '.$row["primerApellido"]. ' '.$row["segundoApellido"] ;
		print '<br>';
		print  $nombre.' '.$primerApellido.' '.$segundoApellido;
		print '<br>';
			print '<br>';
	};//end while
		
	$response['post'] = $post;
	$fp = fopen('MATRICULA.json','w');
	fwrite($fp, json_encode($response));
	fclose($fp);
 ?>