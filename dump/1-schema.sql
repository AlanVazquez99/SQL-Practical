CREATE SCHEMA platzi;

create table platzi.alumnos (
	id INT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	email VARCHAR(50),
	colegiatura FLOAT,
	fecha_incorporacion TIMESTAMP,
	carrera_id INT,
	tutor_id INT
);

CREATE TABLE platzi.carreras (
	id INT,
	carrera VARCHAR(100),
	fecha_alta TIMESTAMP,
	vigente BOOLEAN
);

