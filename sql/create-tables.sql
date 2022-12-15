CREATE TABLE Pais (
  id SERIAL NOT NULL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  populacao BIGINT NOT NULL,
  area BIGINT NOT NULL,
  densidadePop BIGINT NOT NULL,
  capital VARCHAR(100)
  --PIB FLOAT,
);

CREATE TABLE Continente (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TABLE Governante (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  sexo CHAR NOT NULL,
  dataNascimento DATE,
  partido VARCHAR(100),
  tipoGoverno VARCHAR(100),
  inicioGestao DATE,
  fimGestao DATE
);

CREATE TABLE GovernantePais (
  id SERIAL PRIMARY KEY,
  idGovernante SERIAL REFERENCES Governante(id),
  idPais SERIAL REFERENCES Pais(id)
);

CREATE TABLE Idioma (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE IdiomaPais (
  id SERIAL PRIMARY KEY,
  idIdioma SERIAL REFERENCES Idioma(id),
  idPais SERIAL REFERENCES Pais(id)
);

CREATE TABLE Moeda (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE MoedaPais (
  id SERIAL PRIMARY KEY,
  idMoeda SERIAL REFERENCES Moeda(id),
  idPais SERIAL REFERENCES Pais(id)
);

CREATE TABLE Religiao (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE ReligiaoPais (
  id SERIAL PRIMARY KEY,
  idReligiao SERIAL REFERENCES Religiao(id),
  idPais SERIAL REFERENCES Pais(id),
  eDominante BOOLEAN NOT NULL
);
