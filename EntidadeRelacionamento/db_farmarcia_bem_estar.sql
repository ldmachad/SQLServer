CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias
(
	Id BIGINT IDENTITY(1,1),
	Categoria VARCHAR(255) NOT NULL,
	SubCategoria VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias
(Categoria, SubCategoria)
VALUES
('Beleza', 'Maquiagem'),
('Fitness', 'Suplementos'),
('Higiene', 'Cuidados pessoais'),
('Medicamentos', 'Antigripais'),
('Dermo-cosméticos', 'Proteção da pele');

CREATE TABLE tb_produtos
(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Preco DECIMAL (6,2),
	Quantidade INT,
	DataValidade DATE,
	PRIMARY KEY(Id),
	Categoria_Id BIGINT,
	FOREIGN KEY (Categoria_Id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_produtos
(Nome, Preco, Quantidade, DataValidade, Categoria_Id)
VALUES
('Batom', 20.90, 10, '2030-09-08', 1),
('Whey Protein', 70.00, 20, '2023-08-07', 2),
('Sabonete', 4.50, 15, '2030-07-06', 3),
('Benegrip', 15.90, 25, '2030-10-05', 4),
('Protetor Solar', 85.90, 20, '2030-11-04', 5),
('BCA', 150.00, 10, '2030-12-03', 2),
('Multigrip', 10.90, 30, '2030-05-02', 4),
('Desodorante', 19.80, 20, '2030-03-01', 3);

SELECT * FROM tb_produtos WHERE Preco > 50;

SELECT * FROM tb_produtos WHERE Preco > 5 AND Preco < 60;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.Categoria_Id = tb_categorias.Id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.Categoria_Id = tb_categorias.Id WHERE Categoria = 'Fitness';