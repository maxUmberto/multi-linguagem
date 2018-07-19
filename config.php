<?php
  try{
    global $pdo;
    $pdo = new PDO("mysql:dbname=projeto_multilinguagem;dbhost=localhost", "root", "");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }catch(PDOException $e){
    echo 'Falhou: '.$e->getMessage();
  }
?>
