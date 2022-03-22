CREATE DATABASE db_game_online;

USE db_game_online; 

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
habilidade varchar(255),
arma varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Feiticieiro", "meteoro de fogo", "Cajado");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Arqueiro", "flechas de gelo", "arco e flecha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Clérigo", "círculo de proteção", "livro");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Bárbaro", "machado de pedra", "machado");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem (
id BIGINT auto_increment,
nome varchar (255) NOT NULL, 
ataque int,
defesa int,
classes_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
); 

INSERT INTO tb_personagem (nome, ataque, defesa, classes_id)
VALUES ("João", 250, 120, 1);

INSERT INTO tb_personagem (nome, ataque, defesa, classes_id)
VALUES ("Sabrina", 300, 650, 2);

INSERT INTO tb_personagem (nome, ataque, defesa, classes_id)
VALUES ("Emanuel", 211, 142, 3);

INSERT INTO tb_personagem (nome, ataque, defesa, classes_id)
VALUES ("Miguel", 300, 250, 4);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 200;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 100 AND 200;

SELECT * FROM tb_personagem WHERE nome LIKE "%a%";

SELECT nome, ataque, defesa, tb_classes.classe FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.classes_id = tb_classes.id;




