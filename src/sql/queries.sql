-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
--¿Cuáles son las primeras 10 observaciones registradas?;
SELECT * from climate limit 10;

-- MISSION 2
-- ¿Qué identificadores de región (region_id) aparecen en los datos?;
SELECT "region_id" from  regions;

-- MISSION 3
-- ¿Cuántas especies distintas (species_id) se han observado?;
SELECT DISTINCT COUNT("species_id") from species;

-- MISSION 4
-- ¿Cuántas observaciones hay para la región con region_id = 2?;
SELECT COUNT("region_id")
from observations
WHERE "region_id" = 2;

-- MISSION 5
-- ¿Cuántas observaciones se registraron el día 1998-08-08?;
SELECT *
from observations
WHERE "observation_date" = "1998-08-08";

-- MISSION 6
-- ¿Cuál es el region_id con más observaciones?;
SELECT COUNT("region_id")
from observations
group by region_id;

-- MISSION 7
-- ¿Cuáles son los 5 species_id más frecuentes?;
SELECT *
from observations
GROUP BY species_id
ORDER BY species_id DESC
LIMIT 5;

-- MISSION 8
-- ¿Qué especies (species_id) tienen menos de 5 registros?;
SELECT *
FROM observations
HAVING 


-- MISSION 9
-- ¿Qué observadores (observer) registraron más observaciones?;


-- MISSION 10
-- Muestra el nombre de la región (regions.name) para cada observación.?;


-- MISSION 11
-- Muestra el nombre científico de cada especie registrada (species.scientific_name);


-- MISSION 12
-- ¿Cuál es la especie más observada por cada región?;


-- MISSION 13
-- Inserta una nueva observación ficticia en la tabla observations;


-- MISSION 14
-- Corrige el nombre científico de una especie con error tipográfico;


-- MISSION 15
-- Elimina una observación de prueba (usa su id);