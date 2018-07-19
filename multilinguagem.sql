CREATE DATABASE IF NOT EXISTS projeto_multilinguagem;

USE projeto_multilinguagem;

CREATE TABLE IF NOT EXISTS categorias(
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    lang_item VARCHAR(50)
    );

CREATE TABLE IF NOT EXISTS lang(
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    lang VARCHAR(10),
    nome VARCHAR(50),
    valor VARCHAR(200)
    );

INSERT INTO `categorias` (`id`, `lang_item`)
  VALUES (NULL, 'CATEGORIA_PHOTO'),
          (NULL, 'CATEGORIA_CLOTHES');

INSERT INTO `lang` (`id`, `lang`, `nome`, `valor`)
  VALUES (NULL, 'en', 'CATEGORIA_PHOTO', 'Photos'),
          (NULL, 'pt-br', 'CATEGORIA_PHOTO', 'Fotos'),
          (NULL, 'es', 'CATEGORIA_PHOTO', 'Fotita'),
          (NULL, 'en', 'CATEGORIA_CLOTHES', 'Clothes'),
          (NULL, 'pt-br', 'CATEGORIA_CLOTHES', 'Roupas'),
          (NULL, 'es', 'CATEGORIA_CLOTHES', 'Roupitas');
