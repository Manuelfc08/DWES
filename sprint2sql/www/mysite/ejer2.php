<?php
$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>

<body>
    <?php
    if (!isset($_GET['libro_id'])) {
        die('No se ha especificado una canción');
    }
    $libro_id = $_GET['libro_id'];
    $query = 'SELECT * FROM tLibros WHERE id=' . $libro_id;
    $result = mysqli_query($db, $query) or die('Query error');
    $only_row = mysqli_fetch_array($result);
    echo '<h1>' . $only_row['nombre'] . '</h1>';
    echo '<h2>' . $only_row['url_imagen'] . '</h2>';
    ?>
    <h3>Comentarios:</h3>
    <ul>
        <?php
        $query2 = 'SELECT * FROM tLibros WHERE libro_id=' . $libro_id;
        $result2 = mysqli_query($db, $query2) or die('Query error');
        while ($row = mysqli_fetch_array($result2)) {
            echo '<li>' . $row['comentario'] . '</li>';
        }
        mysqli_close($db);
        ?>
    </ul>
</body>

</html>