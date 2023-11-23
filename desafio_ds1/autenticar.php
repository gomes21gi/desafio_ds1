<?php
    include ("conexao.php")
    
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];

    $comando = ("SELECT * FROM usuarios WHERE nome = '.$usuario.' AND senha = '.$senha.'");
    $resultado = $conexao->query($comando);
?>
?>