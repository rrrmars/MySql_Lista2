CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
setor VARCHAR(255) NOT NULL,
estoque VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Construção", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Pintura", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Decoração", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Eletros", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Elétrica", "Area Externa/Interna", "Disponivel");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
garantia_meses INT,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Biombo Ripado de Madeira Pinus Natural 151x180cm Massol", 449.99, 6, 3);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Espelho Veneziano Estilo Provençal 88cm - Moldura Em Vidro Trabalhado", 1199.90, 3, 3);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Rolo Textura Cabelo De Anjo 23cm S/cabo", 25.99, 3, 2);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Rolo Angular para Paredes Lisas Dexter", 19.99, 0, 2);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Lava E Seca Samsung Air Wash 11kg", 3835.10, 3, 4);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Smart Tv Philco Led 50 Polegadas 4k Uhd 2 Usb 4 Hdmi Wi Fi", 2999.99, 12, 4);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Tinta Látex Fosco a Clássica Maxx Branco Neve 20L Suvinil + Kit Pintura 5 Peças Dexter", 435.49, 12, 2);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Argamassas", 34.99, 12, 1);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Caixa d'Água", 2479.99, 120, 1);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id; 

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id 
WHERE nome LIKE "%x%";
