CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT auto_increment,
tipo varchar(255)
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo)
VALUE ("Tradicional");

INSERT INTO tb_categoria (tipo)
VALUE ("Especial");

INSERT INTO tb_categoria (tipo)
VALUE ("Doce");

SELECT * FROM tb_categoria;  

CREATE TABLE tb_pizzaria (
id BIGINT auto_increment,
sabor varchar (255),
tamanho varchar (255),
valor decimal (8, 2),
tipo_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (tipo_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizzaria (sabor, tamanho, valor, tipo_id)
	VALUE ("Quatro queijos", "Grande", 49.90, 1);
    
INSERT INTO tb_pizzaria (sabor, tamanho, valor, tipo_id)
	VALUE ("Marguerita", "Média", 39.90, 1);
    
INSERT INTO tb_pizzaria (sabor, tamanho, valor, tipo_id)
	VALUE ("Shimeji", "Grande", 59.90, 2);
    
INSERT INTO tb_pizzaria (sabor, tamanho, valor, tipo_id)
	VALUE ("Mussarela de búfala", "Grande", 59.90, 2);
    
INSERT INTO tb_pizzaria (sabor, tamanho, valor, tipo_id)
	VALUE ("Chocolate", "Broto", 29.90, 3);
    
INSERT INTO tb_pizzaria (sabor, tamanho, valor, tipo_id)
	 VALUE ("Romeu e Julieta", "Broto", 29.90, 3);
     
     
SELECT * FROM tb_pizzaria;

SELECT * FROM tb_pizzaria WHERE valor > 45.00;

SELECT * FROM tb_pizzaria WHERE valor BETWEEN 29.00 AND 60.00;

SELECT * FROM tb_pizzaria WHERE sabor LIKE "%C%";

SELECT * FROM tb_pizzaria INNER JOIN tb_categoria ON tb_pizzaria.tipo_id = tb_categoria.id;

SELECT * FROM tb_pizzaria INNER JOIN tb_categoria ON tb_pizzaria.tipo_id = tb_categoria.id WHERE tb_pizzaria.sabor = "Doce";

    