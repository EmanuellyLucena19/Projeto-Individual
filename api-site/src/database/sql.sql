CREATE DATABASE nordeste;

USE nordeste;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nomeUsuario VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE musicas(
	idMusicas INT PRIMARY KEY AUTO_INCREMENT,
	nomeMusicas VARCHAR(50)
);


select*from usuario;
select*from musicas;