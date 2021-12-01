CREATE DATABASE nordeste;

USE nordeste;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nomeUsuario VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table lugares (
	idLugar INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

create table avaliacao(
	fk_usuario INT,
    fk_lugares INT,
    dataAvaliacao DATETIME,
    gostou boolean,
    FOREIGN KEY(fk_usuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY(fk_lugares) REFERENCES lugares(idLugar)
);

select * from usuario;

INSERT INTO lugares VALUES (null, 'Museu dos pandeiros');
INSERT INTO lugares VALUES (null, 'Parque do povo');
INSERT INTO lugares VALUES (null, 'Os Pioneiros da Borborema');
INSERT INTO lugares VALUES (null, 'Farra de Bodega');

INSERT INTO avaliacao VALUES (1,1, now(), true);
INSERT INTO avaliacao VALUES (1,2, now(), false);

select * from avaliacao
join usuario on idUsuario = fk_usuario
join lugares on idLugar = fk_lugares LIMIT 10;