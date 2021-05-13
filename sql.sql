create table usuarios(
	id int identity(1,1)primary key,
	nome varchar(50) not null,
	nick varchar(50) not null,
	email varchar(50) not null,
	senha varchar(100) not null,
	criadoEm datetime default(getdate())
)

CREATE TABLE seguidores(
	usuario_id int not null,
	FOREIGN KEY (usuario_id)
	REFERENCES usuarios(id)
	ON DELETE CASCADE,

	seguidor_id int not null,
	FOREIGN KEY (seguidor_id)
	REFERENCES usuarios(id)
	ON DELETE CASCADE,

	primary key (usuario_id, seguidor_id)
)GO

CREATE TABLE publicacoes(
	id int  identity(1,1) primary key,
	titulo varchar(50) not null,
	conteudo varchar(300) not null,

	autor_id int not null,
	foreign key (autor_id)
	REFERENCES usuarios(id)

	curtidas int DEFAULT 0
	criadaEm datetime default(getdate())
)
