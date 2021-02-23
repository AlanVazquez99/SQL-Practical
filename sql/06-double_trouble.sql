-- Find duplicate elements

  -- Show the last row
SELECT * FROM platzi.alumnos
WHERE id = (
  SELECT MAX(id) FROM platzi.alumnos
);

  -- Duplicate the last row
INSERT INTO platzi.alumnos (
  id,
  nombre,
  apellido,
  email,
  colegiatura,
  fecha_incorporacion,
  carrera_id,
  tutor_id
)(
  SELECT
    id+1,
    nombre,
    apellido,
    email,
    colegiatura,
    fecha_incorporacion,
    carrera_id,
    tutor_id
  FROM platzi.alumnos
  WHERE id = (
    SELECT MAX(id) FROM platzi.alumnos
  )
);

  -- Check the 15 last rows
SELECT * FROM platzi.alumnos
ORDER BY id DESC
LIMIT 20;

  -- Show rows with duplicaed data casting to text
SELECT (
  nombre,
  apellido,
  email,
  colegiatura,
  fecha_incorporacion,
  carrera_id,
  tutor_id
)::text, COUNT(*)
FROM platzi.alumnos
GROUP BY (
  nombre,
  apellido,
  email,
  colegiatura,
  fecha_incorporacion,
  carrera_id,
  tutor_id
)
HAVING COUNT(*) > 1;

  -- Count rows with same data
SELECT * FROM (
  SELECT 
    ROW_NUMBER() OVER(
      PARTITION BY
        nombre,
        apellido,
        email,
        colegiatura,
        fecha_incorporacion,
        carrera_id,
        tutor_id
      ORDER BY id ASC
    ) AS row, *
  FROM platzi.alumnos
) AS duplicados
WHERE duplicados.row > 1;

  -- Delete those duplicates records
DELETE FROM platzi.alumnos
WHERE id IN (
  SELECT id FROM (
    SELECT 
      id,
      ROW_NUMBER() OVER(
        PARTITION BY
          nombre,
          apellido,
          email,
          colegiatura,
          fecha_incorporacion,
          carrera_id,
          tutor_id
        ORDER BY id ASC
      ) AS row
    FROM platzi.alumnos
  ) AS duplicados
  WHERE duplicados.row > 1
);
