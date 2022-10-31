DROP DATABASE IF exists prueba;

CREATE DATABASE prueba;

USE prueba;

CREATE TABLE usuario(
nombre VARCHAR(30) NOT NULL,
dni VARCHAR(9) NOT NULL ,
curso VARCHAR (8) NOT NULL,
telefono INT(10) NOT NULL,
email VARCHAR (20) NOT NULL,
tipo VARCHAR(20) NOT NULL,
cod_usuario INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (cod_usuario)
);

create table materias(
nombreM VARCHAR(255) NOT NULL,
nota1 decimal(2,2)NOT NULL,
nota2 decimal(2,2) NOT NULL,
nota3 decimal(2,2) NOT NULL,
estado VARCHAR(30) NOT NULL,
cod_usuario INT not null,
cod_materia INT NOT NULL AUTO_INCREMENT,
foreign KEY(cod_usuario) references usuario(cod_usuario),
PRIMARY KEY(cod_materia));

CREATE TABLE usuario_materia(
    cod_usuario INT,
    cod_materia INT,
    FOREIGN KEY(cod_usuario) references usuario(cod_usuario),
    FOREIGN KEY(cod_materia) references materias(cod_materia));



