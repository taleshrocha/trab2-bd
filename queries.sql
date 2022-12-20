-- Selecione os 10 países com maior PIB
SELECT
  name as name,
  gdp as gdp
FROM
  country
WHERE
  gdp IS NOT NULL
order BY
    gdp DESC
    LIMIT 10;

-- Selecione os 10 países mais populosos do mundo.
SELECT
  C.name as name,
  C.population as population
FROM
  country C
order BY
    population DESC
    LIMIT 10;

-- Selecione a moeda mais usada entre os países.
SELECT COUNT(currency.iso_code) as num_count_usada ,currency.* FROM currency INNER JOIN currency_country ON currency.iso_code = currency_country.currency GROUP BY iso_code ORDER BY COUNT(currency.iso_code) DESC LIMIT 1;

--Selecione a religiaoDominante que está presente na maior quantidade de países. (Mudar para ranking de religiões presentes no mundo!!!)
SELECT COUNT(religion.name), religion.* FROM religion INNER JOIN religion_country ON religion.name = religion_country.religion WHERE religion_country.population > 0 GROUP BY religion.name ORDER BY COUNT(religion.name) DESC;

-- Selecione a religiaoDominante que está presente para a maior parte da população entre os países.
SELECT religion_country.religion, SUM(religion_country.population) FROM religion_country GROUP BY religion_country.religion ORDER BY SUM(religion_country.population) DESC LIMIT 1;

-- Selecione quantos países tem cada continente por continente.
SELECT COUNT(*) num_paises, continent FROM country GROUP BY continent ORDER BY num_paises DESC;

-- Selecione cada presidente atual de cada país de todos os países.
SELECT head_of_state FROM country WHERE head_of_state != 'NULL'; --Essa query está incompleta, desde que cada country só pode ter um head_of_state associado a ele, todos os head_of_state de country estão atuando no momento, independente de end_of_managment

-- Brayan Selecione a porcentagem de países que possuem como presidente atual alguém do sexo feminino. (Para testar essa query seria necessário preencher o campo sexo, além do problema citado anteriormente)
SELECT head_of_state.* FROM country INNER JOIN head_of_state ON head_of_state.name = country.head_of_state WHERE head_of_state != 'NULL' AND head_of_state.sex = 'F';

-- Selecione a porcentagem de países que possuem como presidente atual alguém do sexo feminino. (Para testar essa query seria necessário preencher o campo sexo, além do problema citado anteriormente)
SELECT 
  head_of_state.* 
FROM 
  country 
  INNER JOIN 
  head_of_state 
  ON head_of_state.name = country.head_of_state 
WHERE 
  head_of_state != 'NULL' 
  AND head_of_state.sex = 'F';

-- Quantos pessoas existem no mundo?
SELECT
  SUM(population)
FROM
  country;
