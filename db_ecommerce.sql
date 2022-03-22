CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
marca varchar(255) NOT NULL,
quantidade int,
preco decimal(0.2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Nike", 100, 700.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Adidas", 80, 350.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Timberland", 200, 600.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Puma", 300, 200.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Reebok", 20, 150.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "New Balance", 500, 900.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Mizuno", 10, 1000.00);

INSERT INTO tb_ecommerce (nome, marca, quantidade, preco)
VALUE ("Tênis", "Asics", 100, 450.00);

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE preco >= 500.00;

SELECT * FROM tb_ecommerce WHERE preco <= 500.00;

SELECT nome, marca, quantidade, concat('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_ecommerce;

ALTER TABLE tb_ecommerce MODIFY preco decimal (8,2);


