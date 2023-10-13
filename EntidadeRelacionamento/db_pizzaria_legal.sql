CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias
(
    Id BIGINT IDENTITY(1,1),
    Tipo VARCHAR(255)NOT NULL,
    Tamanho VARCHAR(255)NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO tb_categorias 
(Tipo, Tamanho)
VALUES
('Salgada', 'Grande'),
('Doce', 'Broto'),
('Vegetariana', 'Média'),
('Vegana', 'Média'),
('Frita', 'Família');


CREATE TABLE tb_pizzas
(
    Id BIGINT IDENTITY(1,1),
    Sabor VARCHAR(255)NOT NULL,
    TipoBorda VARCHAR(255)NOT NULL,
    Preco DECIMAL (5,2)NOT NULL,
    Quantidade INT,
    categorias_id BIGINT,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas 
(Sabor, TipoBorda, Preco, Quantidade, categorias_id)
VALUES
('Portuguesa', 'Borda Recheada', 30.00, 10, 1),
('Frango com Catupiry', 'Borda simples', 80.00, 20, 1),
('Chocolate com Banana', 'Borda Recheada com nutela', 150.00, 30, 2),
('Romeu e Julieta', 'Borda simples ', 115.00, 20, 2),
('4 Queijos', 'Borda simples', 35.00, 10, 3),
('Calabresa', 'Borda simples', 45.00, 40, 5),
('Brócolis', 'Borda simples', 35.00, 20, 4),
('Nutela', 'Borda Recheada com leite mo�a', 140.00, 10, 2);

SELECT * FROM tb_pizzas WHERE Preco > 45;

SELECT * FROM tb_pizzas WHERE Preco > 50 AND Preco < 100;

SELECT * FROM tb_pizzas WHERE Sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.Id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.Id = tb_pizzas.categorias_id 
WHERE tb_categorias.Tipo = 'Doce';