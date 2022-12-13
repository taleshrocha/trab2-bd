CREATE TABLE Pais (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  area INT NOT NULL,
  tamPopulacao INT,
  PIB FLOAT,
  descricao VARCHAR(1000)
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
