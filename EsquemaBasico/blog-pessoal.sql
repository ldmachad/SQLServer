CREATE TABLE [tb_temas] (
	Id bigint NOT NULL,
	Descricao varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_TEMAS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	Id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_postagens] (
	Id bigint NOT NULL,
	Titulo varchar(255) NOT NULL,
	Texto varchar(500) NOT NULL,
	Data datetimeoffset NOT NULL,
	TemaId bigint NOT NULL,
	UsuarioId bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO


ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk0] FOREIGN KEY ([TemaId]) REFERENCES [tb_temas]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk0]
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [tb_usuarios]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk1]
GO

