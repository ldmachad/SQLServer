CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes
(
	Id BIGINT IDENTITY(1,1),
	Classe VARCHAR(255) NOT NULL,
	Funcao VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_classes
(Classe, Funcao)
VALUES
('Lutador', 'Topo'),
('Assassino', 'Caçador'),
('Mago', 'Meio'),
('Assassino', 'Meio'),
('Tanque', 'Suporte');

CREATE TABLE tb_personagens
(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	PoderAtq INT,
	PoderDef INT,
	Especie VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id),
	Classe_Id BIGINT,
	FOREIGN KEY (Classe_Id) REFERENCES tb_classes(Id)
);

INSERT INTO tb_personagens
(Nome, PoderAtq, PoderDef, Especie, Classe_Id)
VALUES
('Aatrox', 3000, 900, 'Darkin', 1),
('Kayn', 2500, 500, 'Humano Magicamente Alterado', 2),
('Ahri', 1000, 300, 'Vastaya', 3),
('Akali', 1500, 400, 'Humano', 4),
('Alistar', 500, 1900, 'Minotauro', 5),
('Caitlyn', 4000, 300, 'Humano', 4),
('ChoGath', 600, 1500, 'Monstro', 1),
('Cassiopeia', 1000, 350, 'Humano Magicamente Alterado', 3);

SELECT * FROM tb_personagens WHERE PoderAtq > 2000;

SELECT * FROM tb_personagens WHERE PoderDef > 1000 AND PoderDef <2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.Classe_Id = tb_classes.Id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.Classe_Id = tb_classes.Id WHERE Classe = 'Assassino';