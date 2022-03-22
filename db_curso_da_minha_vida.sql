CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
formacao VARCHAR(255) NOT NULL,
setor VARCHAR(255),
parceria_educacional VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(formacao, parceria_educacional) 
VALUES("Tecnico", "Sim");

INSERT INTO tb_categoria(formacao, parceria_educacional) 
VALUES("Graduação", "Sim");

INSERT INTO tb_categoria(formacao, parceria_educacional) 
VALUES("Profissionalizante", "Sim");

INSERT INTO tb_categoria(formacao, parceria_educacional) 
VALUES("Mestrado", "Não");

INSERT INTO tb_categoria(formacao, parceria_educacional) 
VALUES("Técnologo", "Não");

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
curso VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
duracao VARCHAR(255) NOT NULL,
desconto VARCHAR(255) NOT NULL,
id_categoria BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("TI", 2800.00, "4 semestres", "30%" ,1);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Estética", 650.00, "6 semestres","20%", 2);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Desing grafico", 770.00, "6 meses", "15%", 5);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Enfermagem", 1500.00, "12 semestres","22%",2);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Marketing", 550.00, "2 semestres","32%", 1);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Administração", 1100.00, "2 anos","45%",4);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
 VALUES("Ciência de dados", 999.99, "6 meses","10%", 3);
 
INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Direito", 1200.00, "10 semestres","10%",5);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria) 
VALUES("Rádio e tv", 455.50, "8 semestres" ,"10%", 1);

SELECT curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) AS preco , duracao, desconto FROM tb_produtos WHERE preco > 50;

SELECT curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) AS preco , duracao, desconto FROM tb_produtos WHERE preco > 3 AND preco < 60;

SELECT curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) AS preco , duracao, desconto FROM tb_produtos WHERE curso LIKE 'J%';

SELECT * FROM tb_produtos INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produtos.id_categoria; 

SELECT * FROM tb_produtos INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produtos.id_categoria 
WHERE duracao LIKE '%anos%';