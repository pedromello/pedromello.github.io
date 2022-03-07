<?php

/**
 * Código backend para salvar votos da urna eletrônica
 */

/**
 * Local do banco de dados
 */
define('HOST', 'localhost');

/**
 *  Usuário do banco de dados
 */
define('USER', 'root');

/**
 * Senha do banco de dados
 */
define('PASS', '');

/**
 * Nome do banco de dados
 */
define('DBNAME', 'urna_db');

/**
 * Se a conexão for mal sucedida, exibe uma mensagem de erro
 */
$conexao = mysqli_connect(HOST, USER, PASS, DBNAME) or die ('Não foi possível conectar');

header('Content-Type: application/json');

/**
 * Recebe os resultados das operações para retornar informação ao usuário
 */
$aResult = array();

/**
 * Verifica se recebeu os dados via POST
 */
if( !isset($_POST['candidates']) ) { $aResult['error'] = 'No candidates!'; }

/**
 * Utiliza os dados para montar as queries e executa-las
 */
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

/**
 * Aviso de sucesso ou erro
 */
echo json_encode($aResult);