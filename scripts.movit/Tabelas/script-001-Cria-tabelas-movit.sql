/*
Cria banco movit
*/
CREATE SCHEMA movit;

/*
Cria tabela de usuario
*/
CREATE TABLE movit.usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipousuario INT NOT NULL
);

/*
Cria tabela de cantina
*/
CREATE TABLE movit.cantina (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    datacantina VARCHAR(255) NOT NULL,
    valor decimal(10,2) NOT NULL,
    quantidade INT NOT NULL
);