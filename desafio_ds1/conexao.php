<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "desafio_ds1";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Erro na conexão com o banco de dados: " . $conn->connect_error);
}

?>