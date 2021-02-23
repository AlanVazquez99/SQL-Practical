-- Get a set of option

SELECT * FROM platzi.alumnos
WHERE id IN (
  SELECT id FROM platzi.alumnos
  WHERE tutor_id = 30
);

SELECT * FROM platzi.alumnos
WHERE id NOT IN (
  SELECT id FROM platzi.alumnos
  WHERE tutor_id != 30
);

-- Exclude a SET

SELECT * FROM platzi.alumnos
WHERE id NOT IN (
  SELECT id FROM platzi.alumnos
  WHERE tutor_id = 30
);

SELECT * FROM platzi.alumnos
WHERE id IN (
  SELECT id FROM platzi.alumnos
  WHERE tutor_id != 30
);

SELECT * FROM platzi.alumnos
WHERE id IN (
  SELECT id FROM platzi.alumnos
  WHERE tutor_id <> 30
);
