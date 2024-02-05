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

/*
Criar tabela de membro
*/

CREATE TABLE movit.membro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomecompleto VARCHAR(255),
    email VARCHAR(255),
    datanascimento DATE,
    situacaomembro INT NOT NULL,
    idusuario INT,
    FOREIGN KEY (idusuario) REFERENCES usuario(id)
);

/*
Criar tabela de estado
*/
CREATE TABLE movit.estado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    sigla VARCHAR(2) NOT NULL
);
/*
Criar tabela de cidade
*/
CREATE TABLE movit.cidade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
    idestado INT,
    FOREIGN KEY (idestado) REFERENCES estado(id)
);