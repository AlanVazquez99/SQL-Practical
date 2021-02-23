-- Using datetime fields
  -- SQL Standard
SELECT 
  EXTRACT(YEAR FROM fecha_incorporacion) AS anio,
  EXTRACT(MONTH FROM fecha_incorporacion) AS mes,
  EXTRACT(DAY FROM fecha_incorporacion) AS dia,
  EXTRACT(HOUR FROM fecha_incorporacion) AS hora,
  EXTRACT(MINUTE FROM fecha_incorporacion) AS minuto,
  EXTRACT(SECOND FROM fecha_incorporacion) AS segundo
FROM platzi.alumnos;

  -- PostgreSQL function
SELECT 
  DATE_PART('CENTURY', fecha_incorporacion) AS siglo,
  DATE_PART('DECADE', fecha_incorporacion) AS decada,
  DATE_PART('YEAR', fecha_incorporacion) AS anio,
  DATE_PART('MONTH', fecha_incorporacion) AS mes,
  DATE_PART('DAY', fecha_incorporacion) AS dia,
  DATE_PART('HOUR', fecha_incorporacion) AS hora,
  DATE_PART('MINUTE', fecha_incorporacion) AS minuto,
  DATE_PART('SECOND', fecha_incorporacion) AS segundo,
  DATE_PART('MICROSECONDS', fecha_incorporacion) AS microsegundo,
  DATE_PART('MILLISECONDS', fecha_incorporacion) AS milisegundo,
  DATE_PART('DOW', fecha_incorporacion) AS dia_semana,
  DATE_PART('DOY', fecha_incorporacion) AS dia_anio,
  DATE_PART('EPOCH', fecha_incorporacion) AS epoca,
  DATE_PART('ISODOW', fecha_incorporacion) AS dia_semana_iso,
  DATE_PART('ISOYEAR', fecha_incorporacion) AS anio_iso
    -- timestamp units "timezone" not supported
  -- DATE_PART('TIMEZONE', fecha_incorporacion) AS tz,
  -- DATE_PART('TIMEZONE_HOUR', fecha_incorporacion) AS tz_hour,
  -- DATE_PART('TIMEZONE_MINUTE', fecha_incorporacion) AS tz_min
FROM platzi.alumnos;
