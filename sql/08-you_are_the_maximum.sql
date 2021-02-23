-- Get the last date by carrera
SELECT MAX(fecha_incorporacion) AS last_date, carrera_id
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY last_date DESC;

-- Order all names by alphabet
SELECT CONCAT(nombre, ' ', apellido) AS nombre
FROM platzi.alumnos
ORDER BY nombre ASC;

-- Order alphabetical names ordering by tutor
SELECT MIN(CONCAT(nombre, ' ', apellido)) AS nombre, tutor_id
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id ASC;
