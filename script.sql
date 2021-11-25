create database Paraiba;
use Paraiba;

create table estado(
idEstado int primary key auto_increment,
nomeEstado varchar(45)
);

create table email(
idEmail int primary key,
nomeEmail varchar(40)
);

create table comida_tipica(
idComida int primary key,
nomeComida varchar(45),
fkEstado int,
foreign key (fkEstado) references estado(idEstado)
);

create table musicas(
idMusicas int primary key,
nomeMusicas varchar(45),
fkEstado int,
foreign key (fkEstado) references estado(idEstado)
);

create table usuario(
idUsuario int primary key,
nomeUsuario varchar(45),
fkEmail int,
foreign key (fkEmail) references email(idEmail),
fkMusicas int,
foreign key (fkMusicas) references comida_tipica(idComida),
fkComida int,
foreign key (fkComida) references comida_tipica(idComida)
);

