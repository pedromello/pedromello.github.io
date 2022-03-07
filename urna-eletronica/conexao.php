<?php
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBNAME', 'urna_db');

$conexao = mysqli_connect(HOST, USER, PASS, DBNAME) or die ('Não foi possível conectar');

header('Content-Type: application/json');

$aResult = array();

if( !isset($_POST['candidates']) ) { $aResult['error'] = 'No candidates!'; }

if( !isset($aResult['error']) ) {
    $codVereador = $_POST['candidates'][0];
    $codPrefeito = $_POST['candidates'][1];

    $query_vereador = 'update vereador SET votos = votos + 1 WHERE vereador.codigo = '.$codVereador;
    $query_prefeito = 'update prefeito SET votos = votos + 1 WHERE prefeito.codigo = '.$codPrefeito;

    $result_vereador = mysqli_query($conexao, $query_vereador);
    $result_prefeito = mysqli_query($conexao, $query_prefeito);

    $aResult['result_vereador'] = $result_vereador;
    $aResult['result_prefeito'] = $result_prefeito;
}

echo json_encode($aResult);