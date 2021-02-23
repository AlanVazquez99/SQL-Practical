-- Get the second higher

SELECT DISTINCT(colegiatura)
FROM platzi.alumnos
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;


SELECT * FROM platzi.alumnos
WHERE colegiatura = (
  SELECT DISTINCT(colegiatura)
  FROM platzi.alumnos
  ORDER BY colegiatura DESC
  LIMIT 1 OFFSET 1
);

-- Get the second part of the half table
SELECT * FROM platzi.alumnos
OFFSET (
  SELECT COUNT(*)/2 FROM platzi.alumnos
);