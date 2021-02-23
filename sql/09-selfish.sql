

SELECT 
  CONCAT(alumno.nombre, ' ', alumno.apellido) AS alumno,
  CONCAT(tutor.nombre, ' ', tutor.apellido) AS tutor
FROM platzi.alumnos AS alumno
  INNER JOIN platzi.alumnos AS tutor
    ON alumno.tutor_id = tutor.id

SELECT
  CONCAT(tutor.nombre, ' ', tutor.apellido) AS tutor,
  COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS alumno
  INNER JOIN platzi.alumnos as tutor
    ON alumno.tutor_id = tutor.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10

SELECT AVG(alumnos_por_tutor) AS promedio_alumnos_por_tutor
FROM (
  SELECT
    CONCAT(tutor.nombre, ' ', tutor.apellido) AS tutor,
    COUNT(*) AS alumnos_por_tutor
  FROM platzi.alumnos AS alumno
    INNER JOIN platzi.alumnos as tutor
      ON alumno.tutor_id = tutor.id
  GROUP BY tutor
) AS alumnos_tutor
