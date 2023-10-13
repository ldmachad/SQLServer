CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos
(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	Tamanho VARCHAR(2) NOT NULL,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_produtos
(Nome, Quantidade, Tamanho, Preco)
VALUES
('Cropped', 10, 'P', 100.00),
('Body', 15, 'M', 120.00),
('Saia', 20, 'G', 510.00),
('Short', 10, 'GG', 600.00),
('Calça', 15, 'P', 800.00),
('Meia', 5, 'M', 80.00),
('Blusa', 20, 'G', 350.00),
('Casaco', 10, 'GG', 750.00);

SELECT * FROM tb_produtos WHERE Preco > 500;

SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos SET Quantidade = 10 WHERE Id = 14;

SELECT * FROM tb_produtos;

