select id, nome, nick, email, criadoEm from usuarios where nome LIKE '%' or nick LIKE '%'

select nome, CAST(senha as varbinary(max)) as PasswordHash
from usuarios

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