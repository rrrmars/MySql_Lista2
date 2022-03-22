CREATE DATABASE db_funcionarios;

USE db_funcionarios;

CREATE TABLE tb_infofunc (
id bigint AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
salario INT,
data_nascimento DATE,
cpf BIGINT NOT NULL, 
cargo VARCHAR (100),
PRIMARY KEY (id)
);

INSERT INTO tb_infofunc (nome, salario, data_nascimento, cpf, cargo)
VALUES("Luiza", 5000, "1990-10-28", 18992938820, "Analista de sistemas" );

INSERT INTO tb_infofunc (nome, salario, data_nascimento, cpf, cargo)
VALUES("Clarisse", 6000, "1985-11-13", 19228943380, "Desenvolvedor Front-end Pleno" );

INSERT INTO tb_infofunc (nome, salario, data_nascimento, cpf, cargo)
VALUES("Julia", 2000, "1980-04-22", 1900273318, "Desenvolvedor Back-end Junior" );

INSERT INTO tb_infofunc (nome, salario, data_nascimento, cpf, cargo)
VALUES("Andressa", 2000, "1982-12-09", 18991938810, "Desenvolvedor Front-end Junior" );

INSERT INTO tb_infofunc (nome, salario, data_nascimento, cpf, cargo)
VALUES("Amanda", 10000, "1973-01-13", 19008276630, "Desenvolvedor Full-stack Senior" );

SELECT * FROM tb_infofunc;

SELECT nome, CONCAT('R$ ', FORMAT(salario, 'pt_br')) AS salário FROM tb_infofunc;

SELECT * FROM tb_infofunc where salario > 2000;
SELECT * FROM tb_infofunc where salario < 2000;


UPDATE tb_infofunc SET salario = 1000 WHERE id = 4;
