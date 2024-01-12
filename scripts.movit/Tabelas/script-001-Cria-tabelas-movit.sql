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
    tipousuario BIT NOT NULL
);