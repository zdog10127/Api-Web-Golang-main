package banco

import (
	"api/src/config"
	"database/sql"

	_ "github.com/denisenkom/go-mssqldb"
)

func Conectar() (*sql.DB, error) {
	db, erro := sql.Open("mssql", config.StringConexaoBanco)
	if erro != nil {
		return nil, erro
	}

	if erro = db.Ping(); erro != nil {
		db.Close()
		return nil, erro
	}
	return db, nil
}
