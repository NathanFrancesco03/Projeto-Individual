-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

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

create table jogomemoria(
	idjogomemoria int primary key auto_increment,
    fkusuario int,
    foreign key (fkusuario) references usuario(id),
    nome varchar(45),
    cronometrar int
);
