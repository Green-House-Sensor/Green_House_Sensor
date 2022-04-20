CREATE DATABASE greenhouse;

USE greenhouse;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomerRazaoSocial VARCHAR(40),
    email VARCHAR(60),
    dtNasc DATE,
    senha VARCHAR(45),
    CEP CHAR(9),
    numero VARCHAR(5),
    tipo CHAR(2),
	CONSTRAINT tipo CHECK (tipo in('PF', 'PJ')),
    CPFCPNJ VARCHAR(14)
);

CREATE TABLE estufa(
	idEstufa INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT,
    FOREIGN KEY(fkUsuaio) REFERENCES usuario(idUsuario),
    produto VARCHAR(45)
);

CREATE TABLE sensor(
	idSensor INT AUTO_INCREMENT,
    fkEstufa INT,
    PRIMARY KEY(idSensor, fkEstufa),
    localizacao VARCHAR(45)
);

CREATE TABLE dados(
	idDados INT AUTO_INCREMENT,
    fkSensor INT,
    PRIMARY KEY(idDados, fkSensor),
    temperatura VARCHAR(4),
    luminosidade VARCHAR(20),
    umidade VARCHAR(2),
    dataHora DATETIME
);