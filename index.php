<?php
session_start();
require 'config.php';

if(!empty($_GET['lang'])){
  $_SESSION['lang'] = $_GET['lang'];
}

require 'config.php';

require 'language.class.php';
$lang = new Language();
?>
<a href="index.php?lang=en">English</a>
<a href="index.php?lang=pt-br">Português</a>
<a href="index.php?lang=es">Español</a>
<hr>
<h3>Linguagem definida: <?php echo $lang->getLanguage(); ?></h3>
<hr>

<button><?php $lang->get('BUY'); ?></button>

<?php
$sql = "SELECT c.id, (SELECT l.valor FROM lang l WHERE l.lang = :lang AND l.nome = c.lang_item) as nome FROM categorias c";
$sql = $pdo->prepare($sql);
$sql->bindValue(":lang",$lang->getLanguage());
$sql->execute();

if($sql->rowCount() > 0){
  foreach($sql->fetchAll() as $item){
    echo $item['nome'];
  }
}
?>
