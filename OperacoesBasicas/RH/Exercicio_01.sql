CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios
(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	DataAdmissao DATE,
	Salario DECIMAL(6,2) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_funcionarios
(Nome, Cargo, DataAdmissao, Salario)
VALUES
('Leonardo', 'Desenvolvedor Full Stack JR', '2023-09-18', 1900.00),
('Julia', 'Desenvolvedor Full Stack Pleno', '2023-09-18', 7500.00),
('Ingrid', 'Desenvolvedor Full Stack Pleno', '2023-09-18', 7590.00),
('Eduardo', 'Desenvolvedor Full Stack JR', '2023-09-18', 1550.00),
('Milena', 'Desenvolvedor Full Stack Sênior', '2023-09-18', 9580.00);

SELECT * FROM tb_funcionarios WHERE Salario > 2000;

SELECT * FROM tb_funcionarios WHERE Salario < 2000;

UPDATE tb_funcionarios SET DataAdmissao = '2023-01-01' WHERE Id = 1;

UPDATE tb_funcionarios SET DataAdmissao = '2023-02-01' WHERE Id = 2;

UPDATE tb_funcionarios SET DataAdmissao = '2023-03-01' WHERE Id = 3;

UPDATE tb_funcionarios SET DataAdmissao = '2023-04-01' WHERE Id = 4;

UPDATE tb_funcionarios SET DataAdmissao = '2023-05-01' WHERE Id = 5;

SELECT * FROM tb_funcionarios;