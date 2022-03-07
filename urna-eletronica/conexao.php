<?php
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBNAME', 'urna_db');

$conexao = mysqli_connect(HOST, USER, PASS, DBNAME) or die ('Não foi possível conectar');

if (empty($_POST['name'])) {
    echo '<script>alert("Preencha o campo nome!");</script>';
}