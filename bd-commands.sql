CREATE TABLE Pais (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  area INT NOT NULL,
  tamPopulacao INT,
  PIB FLOAT,
  descricao VARCHAR(1000)
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
