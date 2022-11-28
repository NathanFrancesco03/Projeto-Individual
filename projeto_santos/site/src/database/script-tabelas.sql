CREATE DATABASE santos;

USE santos;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	cpf CHAR(11),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE QUIZ (
	idtentativa int primary key auto_increment,
    fkusuario int,
    foreign key (fkusuario) references usuario(id),
    nome varchar(45),
    pontos int
);

create table endereço(
cep char(8),
fkusuario int,
foreign key (fkusuario) references usuario(id)
);

create table jogomemoria(
	idjogomemoria int primary key auto_increment,
    fkusuario int,
    foreign key (fkusuario) references usuario(id),
    nome varchar(45),
    cronometrar int
);
