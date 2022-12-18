-- ### TABLES ###

CREATE TABLE continent (
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

-- ### INSERTS ###

-- continent

INSERT INTO continent VALUES ("America")
INSERT INTO continent VALUES ("Asia")
INSERT INTO continent VALUES ("Europe")
INSERT INTO continent VALUES ("Oceania")

-- head_of_state

-- Abkhazia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Aslan Bzhania', 'President');
-- Afghanistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hibatullah Akhundzada', 'Supreme Leader');
-- Albania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bajram Begaj', 'President');
-- Algeria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdelmadjid Tebboune', 'President');
-- Andorra
INSERT INTO head_of_state (name, goverment_type) VALUES ('Joan Enric Vives', 'Episcopal Co-Prince');
-- Angola
INSERT INTO head_of_state (name, goverment_type) VALUES ('João Lourenço', 'President');
-- Antigua and Barbuda
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Rodney Williams', 'Governor-General');
-- Argentina
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alberto Fernández', 'President');
-- Armenia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Vahagn Khachaturyan', 'President');
-- Australia
INSERT INTO head_of_state (name, goverment_type) VALUES ('David Hurley', 'Governor-General');
-- Austria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alexander Van der Bellen', 'President');
-- Azerbaijan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ilham Aliyev', 'President');
-- Bahamas, The
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Cornelius A. Smith', 'Governor-General');
-- Bahrain
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Hamad bin Isa Al Khalifa', 'King');
-- Bangladesh
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdul Hamid', 'President');
-- Barbados
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Sandra Mason', 'President');
-- Belarus
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alexander Lukashenko', 'President');
-- Belgium
INSERT INTO head_of_state (name, goverment_type) VALUES ('Philippe', 'King');
-- Belize
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Froyla Tzalam', 'Governor-General');
-- Benin
INSERT INTO head_of_state (name, goverment_type) VALUES ('Patrice Talon', 'President');
-- Bhutan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Jigme Khesar Namgyel Wangchuck', 'King');
-- Bolivia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Luis Arce', 'President');
-- Bosnia and Herzegovina
INSERT INTO head_of_state (name, goverment_type) VALUES ('Christian Schmidt', 'High Representative');
-- Botswana
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mokgweetsi Masisi', 'President');
-- Brazil
INSERT INTO head_of_state (name, goverment_type) VALUES ('Jair Bolsonaro', 'President');
-- Brunei
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hassanal Bolkiah', 'Sultan and Prime Minister');
-- Bulgaria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rumen Radev', 'President');
-- Burkina Faso
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ibrahim Traoré', 'President of the Patriotic Movement for Safeguard and Restoration');
-- Burkina Faso
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ibrahim Traoré', 'Interim President');
-- Burundi
INSERT INTO head_of_state (name, goverment_type) VALUES ('Évariste Ndayishimiye', 'President');
-- Cambodia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Norodom Sihamoni', 'King');
-- Cameroon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paul Biya', 'President');
-- Canada
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mary Simon', 'Governor General');
-- Cape Verde
INSERT INTO head_of_state (name, goverment_type) VALUES ('José Maria Neves', 'President');
-- Central African Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Faustin-Archange Touadéra', 'President');
-- Chad
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mahamat Déby', 'Transitional President');
-- Chile
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gabriel Boric', 'President');
-- China
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xi Jinping', 'General Secretary of the Communist Party');
-- China
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xi Jinping', 'President');
-- Colombia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gustavo Petro', 'President');
-- Comoros
INSERT INTO head_of_state (name, goverment_type) VALUES ('Azali Assoumani', 'President');
-- Congo, Democratic Republic of the
INSERT INTO head_of_state (name, goverment_type) VALUES ('Félix Tshisekedi', 'President');
-- Congo, Republic of the
INSERT INTO head_of_state (name, goverment_type) VALUES ('Denis Sassou Nguesso', 'President');
-- Cook Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tom Marsters', 'King''s Representative');
-- Costa Rica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rodrigo Chaves Robles', 'President');
-- Croatia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Zoran Milanović', 'President');
-- Cuba
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miguel Díaz-Canel', 'First Secretary of the Communist Party');
-- Cuba
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miguel Díaz-Canel', 'President');
-- Cyprus
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nicos Anastasiades', 'President');
-- Czech Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miloš Zeman', 'President');
-- Denmark
INSERT INTO head_of_state (name, goverment_type) VALUES ('Margrethe II', 'Queen');
-- Djibouti
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ismaïl Omar Guelleh', 'President');
-- Dominica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Charles Savarin', 'President');
-- Dominican Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Luis Abinader', 'President');
-- East Timor
INSERT INTO head_of_state (name, goverment_type) VALUES ('José Ramos-Horta', 'President');
-- Ecuador
INSERT INTO head_of_state (name, goverment_type) VALUES ('Guillermo Lasso', 'President');
-- Egypt
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdel Fattah el-Sisi', 'President');
-- El Salvador
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nayib Bukele', 'President');
-- Equatorial Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Teodoro Obiang Nguema Mbasogo', 'President');
-- Eritrea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaias Afwerki', 'Chairman of the People''s Front for Democracy and Justice');
-- Eritrea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaias Afwerki', 'President');
-- Estonia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alar Karis', 'President');
-- Eswatini
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mswati III', 'King');
-- Ethiopia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sahle-Work Zewde', 'President');
-- Federated States of Micronesia
INSERT INTO head_of_state (name, goverment_type) VALUES ('David W. Panuelo', 'President');
-- Fiji
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ratu Wiliame Katonivere', 'President');
-- Finland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sauli Niinistö', 'President');
-- France
INSERT INTO head_of_state (name, goverment_type) VALUES ('Emmanuel Macron', 'President');
-- Gabon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ali Bongo Ondimba', 'President');
-- Gambia, The
INSERT INTO head_of_state (name, goverment_type) VALUES ('Adama Barrow', 'President');
-- Georgia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Salome Zourabichvili', 'President');
-- Germany
INSERT INTO head_of_state (name, goverment_type) VALUES ('Frank-Walter Steinmeier', 'President');
-- Ghana
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nana Akufo-Addo', 'President');
-- Greece
INSERT INTO head_of_state (name, goverment_type) VALUES ('Katerina Sakellaropoulou', 'President');
-- Grenada
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cécile La Grenade', 'Governor-General');
-- Guatemala
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alejandro Giammattei', 'President');
-- Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mamady Doumbouya', 'Chairman of the National Committee of Reconciliation and Development');
-- Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mamady Doumbouya', 'Interim President');
-- Guinea-Bissau
INSERT INTO head_of_state (name, goverment_type) VALUES ('Umaro Sissoco Embaló', 'President');
-- Guyana
INSERT INTO head_of_state (name, goverment_type) VALUES ('Irfaan Ali', 'President');
-- Haiti
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ariel Henry', 'Interim President');
-- Honduras
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xiomara Castro', 'President');
-- Hungary
INSERT INTO head_of_state (name, goverment_type) VALUES ('Katalin Novák', 'President');
-- Iceland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Guðni Th. Jóhannesson', 'President');
-- India
INSERT INTO head_of_state (name, goverment_type) VALUES ('Droupadi Murmu', 'President');
-- Indonesia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Joko Widodo', 'President');
-- Iran
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ali Khamenei', 'Supreme Leader');
-- Iraq
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdul Latif Rashid', 'President');
-- Ireland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Michael D. Higgins', 'President');
-- Ireland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Michael D. Higgins', 'President');
-- Israel
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaac Herzog', 'President');
-- Israel
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaac Herzog', 'President');
-- Italy
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sergio Mattarella', 'President');
-- Ivory Coast
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alassane Ouattara', 'President');
-- Jamaica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Patrick Allen', 'Governor-General');
-- Japan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Naruhito', 'Emperor');
-- Jordan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdullah II', 'King');
-- Kazakhstan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Qasym-Zhomart Toqaev', 'President');
-- Kenya
INSERT INTO head_of_state (name, goverment_type) VALUES ('William Ruto', 'President');
-- Kiribati
INSERT INTO head_of_state (name, goverment_type) VALUES ('Taneti Maamau', 'President');
-- Kosovo
INSERT INTO head_of_state (name, goverment_type) VALUES ('Vjosa Osmani', 'President');
-- Kuwait
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Nawaf Al-Ahmad Al-Jaber Al-Sabah', 'Emir');
-- Kyrgyzstan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sadyr Japarov', 'President');
-- Laos
INSERT INTO head_of_state (name, goverment_type) VALUES ('Thongloun Sisoulith', 'General Secretary of the People''s Revolutionary Party');
-- Laos
INSERT INTO head_of_state (name, goverment_type) VALUES ('Thongloun Sisoulith', 'President');
-- Latvia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Egils Levits', 'President');
-- Lebanon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Najib Mikati', 'Acting President');
-- Lesotho
INSERT INTO head_of_state (name, goverment_type) VALUES ('Letsie III', 'King');
-- Liberia
INSERT INTO head_of_state (name, goverment_type) VALUES ('George Weah', 'President');
-- Libya
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohamed al-Menfi', 'Chairman of the Presidential Council');
-- Liechtenstein
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hereditary Prince Alois', 'Regent');
-- Liechtenstein
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hans-Adam II', 'Prince Regnant');
-- Lithuania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gitanas Nausėda', 'President');
-- Luxembourg
INSERT INTO head_of_state (name, goverment_type) VALUES ('Henri', 'Grand Duke');
-- Madagascar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Andry Rajoelina', 'President');
-- Malawi
INSERT INTO head_of_state (name, goverment_type) VALUES ('Lazarus Chakwera', 'President');
-- Malaysia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdullah Sultan Ahmad Shah', 'Yang di-Pertuan Agong');
-- Maldives
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ibrahim Mohamed Solih', 'President');
-- Mali
INSERT INTO head_of_state (name, goverment_type) VALUES ('Assimi Goïta', 'Interim President');
-- Malta
INSERT INTO head_of_state (name, goverment_type) VALUES ('George Vella', 'President');
-- Marshall Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('David Kabua', 'President');
-- Mauritania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohamed Ould Ghazouani', 'President');
-- Mauritius
INSERT INTO head_of_state (name, goverment_type) VALUES ('Prithvirajsing Roopun', 'President');
-- Mexico
INSERT INTO head_of_state (name, goverment_type) VALUES ('Andrés Manuel López Obrador', 'President');
-- Moldova
INSERT INTO head_of_state (name, goverment_type) VALUES ('Maia Sandu', 'President');
-- Monaco
INSERT INTO head_of_state (name, goverment_type) VALUES ('Albert II', 'Sovereign Prince');
-- Mongolia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ukhnaagiin Khürelsükh', 'President');
-- Montenegro
INSERT INTO head_of_state (name, goverment_type) VALUES ('Milo Đukanović', 'President');
-- Morocco
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohammed VI', 'King');
-- Mozambique
INSERT INTO head_of_state (name, goverment_type) VALUES ('Filipe Nyusi', 'President');
-- Myanmar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Min Aung Hlaing', 'Chairman of the State Administration Council');
-- Myanmar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Myint Swe', 'Acting President');
-- Namibia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hage Geingob', 'President');
-- Nauru
INSERT INTO head_of_state (name, goverment_type) VALUES ('Russ Kun', 'President');
-- Nepal
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bidya Devi Bhandari', 'President');
-- Netherlands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Willem-Alexander', 'King');
-- New Zealand
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cindy Kiro', 'Governor-General');
-- Nicaragua
INSERT INTO head_of_state (name, goverment_type) VALUES ('Daniel Ortega', 'President');
-- Niger
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohamed Bazoum', 'President');
-- Nigeria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Muhammadu Buhari', 'President');
-- Niue
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cindy Kiro', 'King''s Representative');
-- North Korea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kim Jong-un', 'General Secretary of the Workers'' Party of Korea');
-- North Korea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kim Jong-un', 'President of the State Affairs Commission');
-- North Macedonia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Stevo Pendarovski', 'President');
-- Northern Cyprus
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ersin Tatar', 'President');
-- Norway
INSERT INTO head_of_state (name, goverment_type) VALUES ('Harald V', 'King');
-- Oman
INSERT INTO head_of_state (name, goverment_type) VALUES ('Haitham bin Tariq', 'Sultan and Prime Minister');
-- Pakistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Arif Alvi', 'President');
-- Palau
INSERT INTO head_of_state (name, goverment_type) VALUES ('Surangel Whipps Jr.', 'President');
-- Palestine
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mahmoud Abbas', 'President');
-- Panama
INSERT INTO head_of_state (name, goverment_type) VALUES ('Laurentino Cortizo', 'President');
-- Papua New Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Bob Dadae', 'Governor-General');
-- Paraguay
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mario Abdo Benítez', 'President');
-- Peru
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dina Boluarte', 'President');
-- Philippines
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bongbong Marcos', 'President');
-- Poland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Andrzej Duda', 'President');
-- Portugal
INSERT INTO head_of_state (name, goverment_type) VALUES ('Marcelo Rebelo de Sousa', 'President');
-- Qatar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Tamim bin Hamad Al Thani', 'Emir');
-- Republic of China (Taiwan)
INSERT INTO head_of_state (name, goverment_type) VALUES ('Tsai Ing-wen', 'President');
-- Romania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Klaus Iohannis', 'President');
-- Russia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Vladimir Putin', 'President');
-- Rwanda
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paul Kagame', 'President');
-- Sahrawi Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Brahim Ghali', 'President');
-- Sahrawi Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Brahim Ghali', 'General Secretary of the Polisario Front');
-- Saint Kitts and Nevis
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tapley Seaton', 'Governor-General');
-- Saint Lucia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Errol Charles', 'Governor-General');
-- Saint Vincent and the Grenadines
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Susan Dougan', 'Governor-General');
-- Samoa
INSERT INTO head_of_state (name, goverment_type) VALUES ('Afioga Tuimalealiʻifano Vaʻaletoʻa Sualauvi II', 'O le Ao o le Malo');
-- San Marino
INSERT INTO head_of_state (name, goverment_type) VALUES ('Maria Luisa Berti', 'Captain Regent');
-- San Marino
INSERT INTO head_of_state (name, goverment_type) VALUES ('Manuel Ciavatta', 'Captain Regent');
-- Saudi Arabia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Salman', 'King');
-- Senegal
INSERT INTO head_of_state (name, goverment_type) VALUES ('Macky Sall', 'President');
-- Serbia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Aleksandar Vučić', 'President');
-- Seychelles
INSERT INTO head_of_state (name, goverment_type) VALUES ('Wavel Ramkalawan', 'President');
-- Sierra Leone
INSERT INTO head_of_state (name, goverment_type) VALUES ('Julius Maada Bio', 'President');
-- Singapore
INSERT INTO head_of_state (name, goverment_type) VALUES ('Halimah Yacob', 'President');
-- Slovakia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Zuzana Čaputová', 'President');
-- Solomon Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir David Vunagi', 'Governor-General');
-- Somalia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hassan Sheikh Mohamud', 'President');
-- South Africa
INSERT INTO head_of_state (name, goverment_type) VALUES ('Cyril Ramaphosa', 'President');
-- South Korea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Yoon Suk-yeol', 'President');
-- South Ossetia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alan Gagloyev', 'President');
-- South Sudan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Salva Kiir Mayardit', 'President');
-- Spain
INSERT INTO head_of_state (name, goverment_type) VALUES ('Felipe VI', 'King');
-- Sri Lanka
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ranil Wickremesinghe', 'President');
-- Sudan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdel Fattah al-Burhan', 'Chairman of the Transitional Sovereignty Council');
-- Suriname
INSERT INTO head_of_state (name, goverment_type) VALUES ('Chan Santokhi', 'President');
-- Sweden
INSERT INTO head_of_state (name, goverment_type) VALUES ('Carl XVI Gustaf', 'King');
-- Switzerland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bashar al-Assad', 'President');
-- Switzerland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Walter Thurnherr', 'Federal Chancellor');
-- Syria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bashar al-Assad', 'President');
-- São Tomé and Príncipe
INSERT INTO head_of_state (name, goverment_type) VALUES ('Carlos Vila Nova', 'President');
-- Tajikistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Emomali Rahmon', 'President');
-- Tanzania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Samia Suluhu Hassan', 'President');
-- Thailand
INSERT INTO head_of_state (name, goverment_type) VALUES ('Maha Vajiralongkorn', 'King');
-- Togo
INSERT INTO head_of_state (name, goverment_type) VALUES ('Faure Gnassingbé', 'President');
-- Tonga
INSERT INTO head_of_state (name, goverment_type) VALUES ('Tupou VI', 'King');
-- Trinidad and Tobago
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paula-Mae Weekes', 'President');
-- Tunisia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kaïs Saïed', 'President');
-- Turkey
INSERT INTO head_of_state (name, goverment_type) VALUES ('Recep Tayyip Erdoğan', 'President');
-- Turkmenistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Serdar Berdimuhamedow', 'President');
-- Tuvalu
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tofiga Vaevalu Falani', 'Governor-General');
-- Uganda
INSERT INTO head_of_state (name, goverment_type) VALUES ('Yoweri Museveni', 'President');
-- Ukraine
INSERT INTO head_of_state (name, goverment_type) VALUES ('Volodymyr Zelenskyy', 'President');
-- United Arab Emirates
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Mohamed bin Zayed Al Nahyan', 'President');
-- United Kingdom
INSERT INTO head_of_state (name, goverment_type) VALUES ('Charles III', 'King');
-- United States
INSERT INTO head_of_state (name, goverment_type) VALUES ('Joe Biden', 'President');
-- Uruguay
INSERT INTO head_of_state (name, goverment_type) VALUES ('Luis Lacalle Pou', 'President');
-- Uzbekistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Shavkat Mirziyoyev', 'President');
-- Vanuatu
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nikenike Vurobaravu', 'President');
-- Vatican City
INSERT INTO head_of_state (name, goverment_type) VALUES ('Pope Francis', 'Sovereign');
-- Venezuela
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nicolás Maduro', 'President');
-- Vietnam
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nguyễn Phú Trọng', 'General Secretary of the Communist Party');
-- Vietnam
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nguyễn Xuân Phúc', 'President');
-- Yemen
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rashad al-Alimi', 'Chairman of the Presidential Leadership Council');
-- Zambia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hakainde Hichilema', 'President');
-- Zimbabwe
INSERT INTO head_of_state (name, goverment_type) VALUES ('Emmerson Mnangagwa', 'President');

-- country
