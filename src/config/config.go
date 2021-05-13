package config

import (
	"fmt"
	"log"
	"os"
	"strconv"

	"github.com/joho/godotenv"
)

var (
	StringConexaoBanco = ""

	Porta = 0

	SecretKey []byte
)

var server = "golang.database.windows.net"
var port = 1433
var user = "gabriel"
var password = "L01t0966"
var database = "golang"

func Carregar() {
	var erro error

	if erro = godotenv.Load(); erro != nil {
		log.Fatal(erro)
	}

	Porta, erro = strconv.Atoi(os.Getenv("API_PORT"))
	if erro != nil {
		Porta = 9000
	}

	StringConexaoBanco = fmt.Sprintf("server=%s;user id=%s;password=%s;port=%d;database=%s;",
		server, user, password, port, database)

	SecretKey = []byte(os.Getenv("SECRET_KEY"))

}
