-- Selecione os 10 países com maior PIB
SELECT
  C.name as name
  C.gdp as gdp
FROM
  country C
order BY
    gdp desc
    LIMIT 10;

-- Selecione os 10 países mais populosos do mundo.
SELECT
  C.name as name
  C.population as population
FROM
  country C
order BY
    population desc
    LIMIT 10;

-- Selecione a moeda mais usada entre os países.

