<?php

/* comprobamos que el usuario nos viene como un parametro */
// if(isset($_GET['userid']) && intval($_GET['userid'])) {
if(isset($_GET['format'])) {
	/* utilizar la variable que nos viene o establecerla nosotros */
	$number_of_posts = isset($_GET['num']) ? intval($_GET['num']) : 10; //10 es por defecto
	$format = strtolower($_GET['format']) == 'json' ? 'json' : 'xml'; //xml es por defecto
	// $user_id = intval($_GET['userid']);

	/* conectamos a la bd */
	// $mysqli = new mysqli('ip_server','user','password', 'database');
	$mysqli = new mysqli('localhost','root','password', 'zabbix');

	/* sacamos los posts de bd */
	// $query = "SELECT * FROM users WHERE userid=".$_GET['userid'];
	if(isset($_GET['limit']) && intval($_GET['limit'])) {
		$query = "SELECT * FROM users LIMIT ".$_GET['limit'];
	}else{
		$query = "SELECT * FROM users";
	}

	if (!$resultado = $mysqli->query($query)) {
		// ¡Oh, no! La consulta falló. 
		echo "Lo sentimos, este sitio web está experimentando problemas.<br>";

		// De nuevo, no hacer esto en un sitio público, aunque nosotros mostraremos
		// cómo obtener información del error
		echo "Error: La ejecución de la consulta falló debido a: \n<br>";
		echo "Query: " . $query . "\n<br>";
		echo "Errno: " . $mysqli->errno . "\n<br>";
		echo "Error: " . $mysqli->error . "\n";
		exit;
	}

	$posts = array();
	if($resultado->num_rows) {
		while($post = $resultado->fetch_assoc()) {
			$posts[] = array('post'=>$post);
			// $posts[] = array($post);
		}
	}

	/* formateamos el resultado */
	if($format == 'json') {
		header('Content-type: application/json');
		echo json_encode(array('posts'=>$posts));
		// echo json_encode(array($posts));
	}
	else {
		header('Content-type: text/xml');
		echo '<?xml version="1.0" encoding="UTF-8"?>';
		echo '<posts>';
		foreach($posts as $index => $post) {
			if(is_array($post)) {
				foreach($post as $key => $value) {
					echo '<',$key,'>';
					if(is_array($value)) {
						foreach($value as $tag => $val) {
							echo '<',$tag,'>',htmlentities($val),'</',$tag,'>';
						}
					}
					echo '</',$key,'>';
				}
			}
		}
		echo '</posts>';
	}

	// El script automáticamente liberará el resultado y cerrará la conexión
	// a MySQL cuando finalice, aunque aquí lo vamos a hacer nostros mismos
	$resultado->free();
	$mysqli->close();
}
?>