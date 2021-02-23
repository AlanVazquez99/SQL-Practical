-- Return BOOLEAN if the number is into range
SELECT INT4RANGE(1, 20) @> 3;

-- Return a BOOLEAN if some values intersect
SELECT NUMRANGE(11.1, 20.1) && NUMRANGE(20, 30);

-- Return the higher num in a range
SELECT UPPER(INT8RANGE(15, 25));

-- Return the lower num in a range
SELECT LOWER(INT8RANGE(15, 25));

-- Return the intersect range between ranges
SELECT NUMRANGE(10, 25) * NUMRANGE(15, 30);

-- Return a BOOLEAN if the range is empty
SELECT ISEMPTY(NUMRANGE(1, 5));


-- All records where tutor is between 1 and 10
SELECT * FROM platzi.alumnos
WHERE INT4RANGE(1, 11) @> tutor_id;

-- Get the range of intersect between tutor_id and carrera_id
SELECT 
  NUMRANGE(
    (SELECT MIN(tutor_id) FROM platzi.alumnos),
    (SELECT MAX(tutor_id) FROM platzi.alumnos)
  ) *
  NUMRANGE(
    (SELECT MIN(carrera_id) FROM platzi.alumnos),
    (SELECT MAX(carrera_id) FROM platzi.alumnos)
  );