<?php
$db = mysqli_connect("172.16.0.2", "root", "1234", "mysitedb") or die("Fail");
?>
<!DOCTYPE html>
<html>

<head>
	<title>LIBRERÍA</title>
	<meta charset="UTF-8">
	<style>
		table {
			border: 2px solid black;
			background-color: #D4C8AA;
			margin: auto;
		}

		th {
			border: inherit;
			background-color: rgb(229, 178, 108);

		}

		td {
			border: 1px solid black;
			text-align: center;
			padding: 15px;
		}
	</style>
</head>

<body>
	<?php
	if (!isset($_GET['libro_id'])) {
		echo "<table>";
		echo "<tr>";
		echo "<th>ID</th>";
		echo "<th>Imagen</th>";
		echo "<th>Nombre</th>";
		echo "<th>Género</th>";
		echo "<th>ISBN</th>";
		echo "</tr>";
		$query = "SELECT * FROM tLibros";
		$result = mysqli_query($db, $query) or die("Query error");
		while ($row = mysqli_fetch_array($result)) {
			echo "<tr>";
			echo "<td><a href='/detail.php?libro_id=" . $row["id"] . "' target='_self'>" . $row["id"] . "</a></td>";
			echo "<td><img src='" . $row["url_imagen"] . "' alt='" . $row["nombre"] . "' height='340px' width='220px' border='2px' hspace='30px'></td>";
			echo "<td>" . $row["nombre"] . "</td>";
			echo "<td>" . $row["genero"] . "</td>";
			echo "<td>" . $row["isbn"] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}
	?>
</body>

</html>
