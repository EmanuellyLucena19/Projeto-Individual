create database viagem;
use viagem;

create table estado(
idEstado int primary key auto_increment,
nomeEstado varchar(45),
cidade varchar(45),
fkEstado int
);

create table musicas(
idMusica int primary key auto_increment,
nomeMusica varchar(45),
fkEstado int,
foreign key fkEstado references estado(idEstado)
);

create table comida(
idComida int primary key auto_increment,
nomeComida varchar(45),
fkEstado int,
foreign key fkEstado references estado(idEstado);