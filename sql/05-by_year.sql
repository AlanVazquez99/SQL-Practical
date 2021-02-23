-- Filter by dates

SELECT * FROM platzi.alumnos
WHERE EXTRACT(YEAR FROM fecha_incorporacion) = 2019;

SELECT * FROM platzi.alumnos
WHERE EXTRACT(YEAR FROM fecha_incorporacion) = 2018
  AND EXTRACT(MONTH FROM fecha_incorporacion) = 5;
