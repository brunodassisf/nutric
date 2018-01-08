<?php

require_once("conexao.php");

$nome = $_POST['nome'];
$email = $_POST['email'];
$endereco = $_POST['endereco'];
$crn = $_POST['crn'];
$senha = $_POST['senha'];


$link = mysqli_connect('localhost', 'root', '6465412', 'projetotcc');

$query = "INSERT INTO nutricionista (nome, email, endereco, crn, senha ) VALUES (".$nome.", ".$email.", ".$endereco.", ".$crn.", ".$senha.")";

$sql = mysqli_query($link, $query);

if (!$sql) {
	echo ("Ocorreu um erro durante a inserção na tablea!");
} else {
	echo ("Dados inseridos com Sucesso");
}

?>