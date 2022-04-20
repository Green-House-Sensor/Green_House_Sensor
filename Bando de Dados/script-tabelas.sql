CREATE DATABASE greenhouse;

USE greenhouse;

CREATE TABLE usuarioPF(
	idPF INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    sobrenome VARCHAR(45),
    CPF CHAR(11),
    rua VARCHAR(45),
    numero INT,
    bairro VARCHAR(30),
    email VARCHAR(45)
);

CREATE TABLE usuarioPJ(
	idPJ INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    nomeRepresentante VARCHAR(45),
    CNPJ CHAR(14),
    rua VARCHAR(45),
    numero INT,
    bairro VARCHAR(45),
    email VARCHAR(45)
);

CREATE TABLE dados(
	idDados INT PRIMARY KEY AUTO_INCREMENT,
    temperatura DECIMAL(10,2),
    luminosidade INT,
    umidade INT,
    dataHora DATETIME
);

CREATE TABLE sensor(
	idSensor INT AUTO_INCREMENT,
    fkDados INT,
    PRIMARY KEY(idSensor, fkDados),
    fkPJ INT,
    FOREIGN KEY(fkPj) REFERENCES usuarioPJ(idPJ),
    fkPF INT,
    FOREIGN KEY(fkPF) REFERENCES usuarioPF(idPF)
);

DESC usuarioPF;
DESC usuarioPJ;
DESC sensor;
DESC dados;
