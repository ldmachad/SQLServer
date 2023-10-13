CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes
(
	Matricula BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Turma VARCHAR(255) NOT NULL,
	Materia VARCHAR(255) NOT NULL,
	Nota DECIMAL(2,1) NOT NULL,
	PRIMARY KEY(Matricula)
);

ALTER TABLE tb_estudantes ALTER COLUMN Nota DECIMAL (3,1);

INSERT INTO tb_estudantes
(Nome, Turma, Materia, Nota)
VALUES
('Leonardo', '.NET 03', 'SQL Server', 10.0),
('Julia', '.NET 03', 'SQL Server', 9.5),
('Ingrid', '.NET 03', 'SQL Server', 4.5),
('Eduardo', '.NET 03', 'SQL Server', 7.0),
('Anderson', '.NET 03', 'SQL Server', 6.5),
('Fernando', '.NET 03', 'SQL Server', 5.0),
('Karina', '.NET 03', 'SQL Server', 6.0),
('Milena', '.NET 03', 'SQL Server', 9.8);

SELECT * FROM tb_estudantes WHERE Nota > 7.0;

SELECT * FROM tb_estudantes WHERE Nota < 7.0;

UPDATE tb_estudantes SET Nota = 8.5 WHERE Matricula = 3;

SELECT * FROM tb_estudantes;