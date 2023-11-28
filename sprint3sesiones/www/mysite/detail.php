<?php
$db = mysqli_connect("172.16.0.2", "root", "1234", "mysitedb") or die("Fail");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        * {
            text-align: center;
        }

        h1 {
            text-align: center;
            color: black;
            background-color: bisque;

        }

        div {
            float: left;
        }

        div * {
            text-align: left;
        }
    </style>
</head>

<body>
    <?php
    if (!isset($_GET['libro_id'])) {
        die("El id indicado no corresponde a ningún libro");
    }
    $libro_id = $_GET['libro_id'];
    $query = "SELECT * FROM tLibros where id=".$libro_id;
    $result = mysqli_query($db, $query) or die("Query error");
    $only_row = mysqli_fetch_array($result);
    echo "<h1>" . $only_row["nombre"] . "</h1>";
    echo "<img src='" . $only_row["url_imagen"] . "' alt='" . $only_row["nombre"] . "' height='340px' width='220px' border='2px' hspace='30px'/>";
    echo "<p>Género: " . $only_row["genero"] . "&nbsp;&nbsp;&nbsp;&nbsp;Género: " . $only_row["genero"] . "</p>";
    ?>
    <div>
        <h2 style="text-align: left;">Comentarios:</h2>
        <?php
        $query2 = "SELECT * FROM tComentarios where id=" . $libro_id;
        $result2 = mysqli_query($db, $query2) or die("Query error");
        while ($row = mysqli_fetch_array($result2)) {
            echo "<p>Usuario: " . $row["usuario_id"] . " || " . $row["comentario"] . "</p>";
        }
        mysqli_close($db);
        ?>
        <br>
        <p>Deja un nuevo comentario:</p>
        <form action="./comment.php" method="post">
            <textarea rows="4" cols="50" name="new_comment"></textarea>
            <input type="hidden" name="libro_id" value="<?php echo $libro_id; ?>">
            <input type="submit" value="Comentar">
        </form>
    </div>
</body>

</html>
