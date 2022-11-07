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

CREATE TABLE Students(
name_s VARCHAR(50),
surname VARCHAR(30),
dni INT,
birthday DATE,
address VARCHAR(30),
gender VARCHAR(1),
id_course INT,
id_divi INT,
user_id INT,
FOREIGN KEY (user_id) REFERENCES USERS(user_id) ON DELETE CASCADE,
FOREIGN KEY (id_course) REFERENCES Courses(id_course),
FOREIGN KEY (id_divi) REFERENCES Divition(id_divi),
PRIMARY KEY(dni));

CREATE TABLE usuario_materia(
    cod_usuario INT,
    cod_materia INT,
    FOREIGN KEY(cod_usuario) references usuario(cod_usuario),
    FOREIGN KEY(cod_materia) references materias(cod_materia));


INSERT into  usuario (cod_usuario, nombre, password, privilege) VALUES
(0, 'admin', 'admin', 'admin'),
(250, 'lauta', '1235', 'student');


INSERT INTO Divition(diviti) VALUES('A'), ('B'), ('C');
INSERT INTO Courses(name_c) VALUES 
	('Primer Año'),
	('Segundo Año'),
	('Tercer Año'),
	('Cuarto Año'),
	('Quinto Año'),
	('Sexto Año'),
	('Séptimo Año');

INSERT INTO Students(name_s, surname, dni, birthday, address, gender, id_course, id_divi, user_id) 
	VALUES ('Lautaro', 'Lucero', 45702847, '2004-06-16', 'Ecuador 1527', 'M', 7, 1, 99);
SELECT * FROM Students;

-- drop student
SELECT * from students;

SELECT * FROM USERS;

