CREATE TABLE Continente (
  name VARCHAR(100) PRIMARY KEY
);

-- https://en.wikipedia.org/wiki/List_of_current_heads_of_state_and_government
CREATE TABLE head_of_state (
  name VARCHAR(100) PRIMARY KEY,
  sex CHAR,
  birthday DATE,
  party VARCHAR(100),
  goverment_type VARCHAR(100),
  management_start DATE,
  management_end DATE
);

-- https://en.wikipedia.org/wiki/List_of_official_languages_by_country_and_territory
CREATE TABLE language (
  name VARCHAR(100) PRIMARY KEY
);

-- https://en.wikipedia.org/wiki/List_of_circulating_currencies
CREATE TABLE currency (
  iso_code VARCHAR(3) PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  symbol VARCHAR(25) NOT NULL,
  fractional_unit VARCHAR(50) NOT NULL,
  number_to_basic INT NOT NULL
);

-- https://en.wikipedia.org/wiki/Religions_by_country
CREATE TABLE religion (
  name VARCHAR(100) PRIMARY KEY
);

-- https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population_density
CREATE TABLE country (
  name VARCHAR(100) PRIMARY KEY,
  population BIGINT NOT NULL,
  area BIGINT NOT NULL,
  population_density BIGINT NOT NULL,
  capital VARCHAR(100),
  head_of_state VARCHAR(100) REFERENCES head_of_state
);


-- https://en.wikipedia.org/wiki/List_of_official_languages_by_country_and_territory
CREATE TABLE language_country (
  language VARCHAR(100) REFERENCES language ON DELETE RESTRICT,
  country VARCHAR(100) REFERENCES country ON DELETE RESTRICT,
  PRIMARY KEY (language, country)
);


-- https://en.wikipedia.org/wiki/List_of_circulating_currencies
CREATE TABLE currency_country (
  currency VARCHAR(100) REFERENCES currency ON DELETE RESTRICT,
  country VARCHAR(100) REFERENCES country ON DELETE RESTRICT,
  PRIMARY KEY (currency, country)
);


-- https://en.wikipedia.org/wiki/Religions_by_country
CREATE TABLE religion_country (
  religion VARCHAR(100) REFERENCES religion ON DELETE RESTRICT,
  country VARCHAR(100) REFERENCES country ON DELETE RESTRICT,
  population BIGINT,
  PRIMARY KEY (religion, country)
);
