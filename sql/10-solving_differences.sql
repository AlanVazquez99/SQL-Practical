SELECT carrera_id, COUNT(*) AS cantidad
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id DESC;

SELECT
  CONCAT(a.nombre, ' ', a.apellido) AS nombre,
  a.carrera_id,
  c.id,
  c.carrera
FROM platzi.alumnos AS a
  LEFT JOIN platzi.carreras AS c
    ON a.carrera_id = c.id
WHERE c.id IS NULL

SELECT
  CONCAT(a.nombre, ' ', a.apellido) AS nombre,
  a.carrera_id,
  c.id,
  c.carrera
FROM platzi.alumnos AS a
  FULL OUTER JOIN platzi.carreras AS c
    ON a.carrera_id = c.id
WHERE c.id IS NULL
