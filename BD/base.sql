drop database if exists prueba;
CREATE DATABASE if not exists prueba;
USE prueba;

CREATE TABLE if not exists USERS(
user_id INT not null auto_increment,
name_user VARCHAR(30),
password VARCHAR(30),
privilege VARCHAR(30),
PRIMARY KEY(user_id));

CREATE TABLE if not exists Teachers(
name_t VARCHAR(50),
surname VARCHAR(50),
dni INT,
birthday DATE,
address VARCHAR(30),
gender VARCHAR(1),
descrip VARCHAR(150),
user_id INT not null auto_increment,
FOREIGN KEY (user_id) REFERENCES USERS(user_id),
PRIMARY KEY(dni));

CREATE TABLE if not exists Matter(
id_matter INT auto_increment,
name_matter VARCHAR(30),
dni INT,
FOREIGN KEY (dni) REFERENCES Teachers(dni), -- or DNI
PRIMARY KEY(id_matter));

CREATE TABLE if not exists Divition(
id_divi INT auto_increment,
diviti VARCHAR(1),
PRIMARY KEY (id_divi));

CREATE TABLE if not exists Courses(
id_course INT auto_increment,
name_c VARCHAR(30),
PRIMARY KEY(id_course));

CREATE TABLE if not exists CourXMatter(
id_course INT,
id_matter INT,
FOREIGN KEY (id_course) REFERENCES Courses(id_course),
FOREIGN KEY (id_matter) REFERENCES Matter(id_matter));

CREATE TABLE if not exists Students(
name_s VARCHAR(50),
surname VARCHAR(30),
dni INT,
birthday DATE,
address VARCHAR(30),
gender VARCHAR(1),
id_course INT,
id_divi INT,
user_id INT not null auto_increment,
FOREIGN KEY (user_id) REFERENCES USERS(user_id) ON DELETE CASCADE,
FOREIGN KEY (id_course) REFERENCES Courses(id_course),
FOREIGN KEY (id_divi) REFERENCES Divition(id_divi),
PRIMARY KEY(dni));

/* Privilegios
admin = Administrador
student = Estudiante
teacher = Profesor
*/

INSERT into  USERS (user_id, name_user, password, privilege) VALUES
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
