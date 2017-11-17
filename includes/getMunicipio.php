<?php
	header("Content-Type: text/html;charset=utf-8");
	require ('../conexion.php');
	
	$id_estado = $_POST['id_estado'];
	
	$queryM = "
				SELECT C.`nombre`
				FROM `carreras` C,`sede` S, `sede_carrera` SC
				WHERE C.`id_carrera`=SC.`fk_carrera` AND SC.`fk_sede`=S.`id_sede` AND S.`id_sede`='$id_estado' ORDER BY C.`nombre` ASC
			  ";
	$resultadoM = $mysqli->query($queryM);
	
	$html= "<option value='0'>Seleccionar Carrera</option>";
	
	while($rowM = $resultadoM->fetch_assoc())
	{
		$html.= "<option value='".$rowM['id_carrera']."'>".$rowM['nombre']."</option>";
	}
	
	echo $html;
?>		