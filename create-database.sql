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
  gdp BIGINT,
  capital VARCHAR(100),
  continent VARCHAR(100) REFERENCES continent,
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

INSERT INTO continent VALUES ('America');
INSERT INTO continent VALUES ('Asia');
INSERT INTO continent VALUES ('Europe');
INSERT INTO continent VALUES ('Oceania');
INSERT INTO continent VALUES ('Africa');

-- head_of_state

INSERT INTO head_of_state (name, goverment_type) VALUES ('Aslan Bzhania', 'President'); -- Abkhazia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hibatullah Akhundzada', 'Supreme Leader'); -- Afghanistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bajram Begaj', 'President'); -- Albania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdelmadjid Tebboune', 'President'); -- Algeria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Joan Enric Vives', 'Episcopal Co-Prince'); -- Andorra
INSERT INTO head_of_state (name, goverment_type) VALUES ('João Lourenço', 'President'); -- Angola
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Rodney Williams', 'Governor-General'); -- Antigua and Barbuda
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alberto Fernández', 'President'); -- Argentina
INSERT INTO head_of_state (name, goverment_type) VALUES ('Vahagn Khachaturyan', 'President'); -- Armenia
INSERT INTO head_of_state (name, goverment_type) VALUES ('David Hurley', 'Governor-General'); -- Australia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alexander Van der Bellen', 'President'); -- Austria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ilham Aliyev', 'President'); -- Azerbaijan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Cornelius A. Smith', 'Governor-General'); -- Bahamas, The
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Hamad bin Isa Al Khalifa', 'King'); -- Bahrain
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdul Hamid', 'President'); -- Bangladesh
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Sandra Mason', 'President'); -- Barbados
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alexander Lukashenko', 'President'); -- Belarus
INSERT INTO head_of_state (name, goverment_type) VALUES ('Philippe', 'King'); -- Belgium
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Froyla Tzalam', 'Governor-General'); -- Belize
INSERT INTO head_of_state (name, goverment_type) VALUES ('Patrice Talon', 'President'); -- Benin
INSERT INTO head_of_state (name, goverment_type) VALUES ('Jigme Khesar Namgyel Wangchuck', 'King'); -- Bhutan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Luis Arce', 'President'); -- Bolivia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Christian Schmidt', 'High Representative'); -- Bosnia and Herzegovina
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mokgweetsi Masisi', 'President'); -- Botswana
INSERT INTO head_of_state (name, goverment_type) VALUES ('Jair Bolsonaro', 'President'); -- Brazil
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hassanal Bolkiah', 'Sultan and Prime Minister'); -- Brunei
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rumen Radev', 'President'); -- Bulgaria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ibrahim Traoré', 'President of the Patriotic Movement for Safeguard and Restoration'); -- Burkina Faso
INSERT INTO head_of_state (name, goverment_type) VALUES ('Évariste Ndayishimiye', 'President'); -- Burundi
INSERT INTO head_of_state (name, goverment_type) VALUES ('Norodom Sihamoni', 'King'); -- Cambodia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paul Biya', 'President'); -- Cameroon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mary Simon', 'Governor General'); -- Canada
INSERT INTO head_of_state (name, goverment_type) VALUES ('José Maria Neves', 'President'); -- Cape Verde
INSERT INTO head_of_state (name, goverment_type) VALUES ('Faustin-Archange Touadéra', 'President'); -- Central African Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mahamat Déby', 'Transitional President'); -- Chad
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gabriel Boric', 'President'); -- Chile
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xi Jinping', 'General Secretary of the Communist Party'); -- China
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gustavo Petro', 'President'); -- Colombia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Azali Assoumani', 'President'); -- Comoros
INSERT INTO head_of_state (name, goverment_type) VALUES ('Félix Tshisekedi', 'President'); -- Congo, Democratic Republic of the
INSERT INTO head_of_state (name, goverment_type) VALUES ('Denis Sassou Nguesso', 'President'); -- Congo, Republic of the
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tom Marsters', 'King''s Representative'); -- Cook Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rodrigo Chaves Robles', 'President'); -- Costa Rica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Zoran Milanović', 'President'); -- Croatia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miguel Díaz-Canel', 'First Secretary of the Communist Party'); -- Cuba
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nicos Anastasiades', 'President'); -- Cyprus
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miloš Zeman', 'President'); -- Czech Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Margrethe II', 'Queen'); -- Denmark
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ismaïl Omar Guelleh', 'President'); -- Djibouti
INSERT INTO head_of_state (name, goverment_type) VALUES ('Charles Savarin', 'President'); -- Dominica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Luis Abinader', 'President'); -- Dominican Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('José Ramos-Horta', 'President'); -- East Timor
INSERT INTO head_of_state (name, goverment_type) VALUES ('Guillermo Lasso', 'President'); -- Ecuador
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdel Fattah el-Sisi', 'President'); -- Egypt
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nayib Bukele', 'President'); -- El Salvador
INSERT INTO head_of_state (name, goverment_type) VALUES ('Teodoro Obiang Nguema Mbasogo', 'President'); -- Equatorial Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaias Afwerki', 'Chairman of the People''s Front for Democracy and Justice'); -- Eritrea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alar Karis', 'President'); -- Estonia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mswati III', 'King'); -- Eswatini
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sahle-Work Zewde', 'President'); -- Ethiopia
INSERT INTO head_of_state (name, goverment_type) VALUES ('David W. Panuelo', 'President'); -- Federated States of Micronesia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ratu Wiliame Katonivere', 'President'); -- Fiji
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sauli Niinistö', 'President'); -- Finland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Emmanuel Macron', 'President'); -- France
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ali Bongo Ondimba', 'President'); -- Gabon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Adama Barrow', 'President'); -- Gambia, The
INSERT INTO head_of_state (name, goverment_type) VALUES ('Salome Zourabichvili', 'President'); -- Georgia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Frank-Walter Steinmeier', 'President'); -- Germany
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nana Akufo-Addo', 'President'); -- Ghana
INSERT INTO head_of_state (name, goverment_type) VALUES ('Katerina Sakellaropoulou', 'President'); -- Greece
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cécile La Grenade', 'Governor-General'); -- Grenada
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alejandro Giammattei', 'President'); -- Guatemala
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mamady Doumbouya', 'Chairman of the National Committee of Reconciliation and Development'); -- Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Umaro Sissoco Embaló', 'President'); -- Guinea-Bissau
INSERT INTO head_of_state (name, goverment_type) VALUES ('Irfaan Ali', 'President'); -- Guyana
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ariel Henry', 'Interim President'); -- Haiti
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xiomara Castro', 'President'); -- Honduras
INSERT INTO head_of_state (name, goverment_type) VALUES ('Katalin Novák', 'President'); -- Hungary
INSERT INTO head_of_state (name, goverment_type) VALUES ('Guðni Th. Jóhannesson', 'President'); -- Iceland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Droupadi Murmu', 'President'); -- India
INSERT INTO head_of_state (name, goverment_type) VALUES ('Joko Widodo', 'President'); -- Indonesia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ali Khamenei', 'Supreme Leader'); -- Iran
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdul Latif Rashid', 'President'); -- Iraq
INSERT INTO head_of_state (name, goverment_type) VALUES ('Michael D. Higgins', 'President'); -- Ireland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaac Herzog', 'President'); -- Israel
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sergio Mattarella', 'President'); -- Italy
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alassane Ouattara', 'President'); -- Ivory Coast
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Patrick Allen', 'Governor-General'); -- Jamaica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Naruhito', 'Emperor'); -- Japan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdullah II', 'King'); -- Jordan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Qasym-Zhomart Toqaev', 'President'); -- Kazakhstan
INSERT INTO head_of_state (name, goverment_type) VALUES ('William Ruto', 'President'); -- Kenya
INSERT INTO head_of_state (name, goverment_type) VALUES ('Taneti Maamau', 'President'); -- Kiribati
INSERT INTO head_of_state (name, goverment_type) VALUES ('Vjosa Osmani', 'President'); -- Kosovo
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Nawaf Al-Ahmad Al-Jaber Al-Sabah', 'Emir'); -- Kuwait
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sadyr Japarov', 'President'); -- Kyrgyzstan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Thongloun Sisoulith', 'General Secretary of the People''s Revolutionary Party'); -- Laos
INSERT INTO head_of_state (name, goverment_type) VALUES ('Egils Levits', 'President'); -- Latvia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Najib Mikati', 'Acting President'); -- Lebanon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Letsie III', 'King'); -- Lesotho
INSERT INTO head_of_state (name, goverment_type) VALUES ('George Weah', 'President'); -- Liberia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohamed al-Menfi', 'Chairman of the Presidential Council'); -- Libya
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hereditary Prince Alois', 'Regent'); -- Liechtenstein
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hans-Adam II', 'Prince Regnant'); -- Liechtenstein
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gitanas Nausėda', 'President'); -- Lithuania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Henri', 'Grand Duke'); -- Luxembourg
INSERT INTO head_of_state (name, goverment_type) VALUES ('Andry Rajoelina', 'President'); -- Madagascar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Lazarus Chakwera', 'President'); -- Malawi
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdullah Sultan Ahmad Shah', 'Yang di-Pertuan Agong'); -- Malaysia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ibrahim Mohamed Solih', 'President'); -- Maldives
INSERT INTO head_of_state (name, goverment_type) VALUES ('Assimi Goïta', 'Interim President'); -- Mali
INSERT INTO head_of_state (name, goverment_type) VALUES ('George Vella', 'President'); -- Malta
INSERT INTO head_of_state (name, goverment_type) VALUES ('David Kabua', 'President'); -- Marshall Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohamed Ould Ghazouani', 'President'); -- Mauritania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Prithvirajsing Roopun', 'President'); -- Mauritius
INSERT INTO head_of_state (name, goverment_type) VALUES ('Andrés Manuel López Obrador', 'President'); -- Mexico
INSERT INTO head_of_state (name, goverment_type) VALUES ('Maia Sandu', 'President'); -- Moldova
INSERT INTO head_of_state (name, goverment_type) VALUES ('Albert II', 'Sovereign Prince'); -- Monaco
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ukhnaagiin Khürelsükh', 'President'); -- Mongolia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Milo Đukanović', 'President'); -- Montenegro
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohammed VI', 'King'); -- Morocco
INSERT INTO head_of_state (name, goverment_type) VALUES ('Filipe Nyusi', 'President'); -- Mozambique
INSERT INTO head_of_state (name, goverment_type) VALUES ('Min Aung Hlaing', 'Chairman of the State Administration Council'); -- Myanmar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Myint Swe', 'Acting President'); -- Myanmar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hage Geingob', 'President'); -- Namibia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Russ Kun', 'President'); -- Nauru
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bidya Devi Bhandari', 'President'); -- Nepal
INSERT INTO head_of_state (name, goverment_type) VALUES ('Willem-Alexander', 'King'); -- Netherlands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cindy Kiro', 'Governor-General'); -- New Zealand
INSERT INTO head_of_state (name, goverment_type) VALUES ('Daniel Ortega', 'President'); -- Nicaragua
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mohamed Bazoum', 'President'); -- Niger
INSERT INTO head_of_state (name, goverment_type) VALUES ('Muhammadu Buhari', 'President'); -- Nigeria
--INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cindy Kiro', 'King''s Representative'); -- Niue
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kim Jong-un', 'General Secretary of the Workers'' Party of Korea'); -- North Korea
--INSERT INTO head_of_state (name, goverment_type) VALUES ('Kim Jong-un', 'President of the State Affairs Commission'); -- North Korea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Stevo Pendarovski', 'President'); -- North Macedonia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ersin Tatar', 'President'); -- Northern Cyprus
INSERT INTO head_of_state (name, goverment_type) VALUES ('Harald V', 'King'); -- Norway
INSERT INTO head_of_state (name, goverment_type) VALUES ('Haitham bin Tariq', 'Sultan and Prime Minister'); -- Oman
INSERT INTO head_of_state (name, goverment_type) VALUES ('Arif Alvi', 'President'); -- Pakistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Surangel Whipps Jr.', 'President'); -- Palau
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mahmoud Abbas', 'President'); -- Palestine
INSERT INTO head_of_state (name, goverment_type) VALUES ('Laurentino Cortizo', 'President'); -- Panama
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Bob Dadae', 'Governor-General'); -- Papua New Guinea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mario Abdo Benítez', 'President'); -- Paraguay
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dina Boluarte', 'President'); -- Peru
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bongbong Marcos', 'President'); -- Philippines
INSERT INTO head_of_state (name, goverment_type) VALUES ('Andrzej Duda', 'President'); -- Poland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Marcelo Rebelo de Sousa', 'President'); -- Portugal
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Tamim bin Hamad Al Thani', 'Emir'); -- Qatar
INSERT INTO head_of_state (name, goverment_type) VALUES ('Tsai Ing-wen', 'President'); -- Republic of China (Taiwan)
INSERT INTO head_of_state (name, goverment_type) VALUES ('Klaus Iohannis', 'President'); -- Romania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Vladimir Putin', 'President'); -- Russia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paul Kagame', 'President'); -- Rwanda
INSERT INTO head_of_state (name, goverment_type) VALUES ('Brahim Ghali', 'President'); -- Sahrawi Republic
--INSERT INTO head_of_state (name, goverment_type) VALUES ('Brahim Ghali', 'General Secretary of the Polisario Front'); -- Sahrawi Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tapley Seaton', 'Governor-General'); -- Saint Kitts and Nevis
INSERT INTO head_of_state (name, goverment_type) VALUES ('Errol Charles', 'Governor-General'); -- Saint Lucia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Susan Dougan', 'Governor-General'); -- Saint Vincent and the Grenadines
INSERT INTO head_of_state (name, goverment_type) VALUES ('Afioga Tuimalealiʻifano Vaʻaletoʻa Sualauvi II', 'O le Ao o le Malo'); -- Samoa
INSERT INTO head_of_state (name, goverment_type) VALUES ('Maria Luisa Berti', 'Captain Regent'); -- San Marino
INSERT INTO head_of_state (name, goverment_type) VALUES ('Manuel Ciavatta', 'Captain Regent'); -- San Marino
INSERT INTO head_of_state (name, goverment_type) VALUES ('Salman', 'King'); -- Saudi Arabia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Macky Sall', 'President'); -- Senegal
INSERT INTO head_of_state (name, goverment_type) VALUES ('Aleksandar Vučić', 'President'); -- Serbia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Wavel Ramkalawan', 'President'); -- Seychelles
INSERT INTO head_of_state (name, goverment_type) VALUES ('Julius Maada Bio', 'President'); -- Sierra Leone
INSERT INTO head_of_state (name, goverment_type) VALUES ('Halimah Yacob', 'President'); -- Singapore
INSERT INTO head_of_state (name, goverment_type) VALUES ('Zuzana Čaputová', 'President'); -- Slovakia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir David Vunagi', 'Governor-General'); -- Solomon Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hassan Sheikh Mohamud', 'President'); -- Somalia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Cyril Ramaphosa', 'President'); -- South Africa
INSERT INTO head_of_state (name, goverment_type) VALUES ('Yoon Suk-yeol', 'President'); -- South Korea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Alan Gagloyev', 'President'); -- South Ossetia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Salva Kiir Mayardit', 'President'); -- South Sudan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Felipe VI', 'King'); -- Spain
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ranil Wickremesinghe', 'President'); -- Sri Lanka
INSERT INTO head_of_state (name, goverment_type) VALUES ('Abdel Fattah al-Burhan', 'Chairman of the Transitional Sovereignty Council'); -- Sudan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Chan Santokhi', 'President'); -- Suriname
INSERT INTO head_of_state (name, goverment_type) VALUES ('Carl XVI Gustaf', 'King'); -- Sweden
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bashar al-Assad', 'President'); -- Switzerland
INSERT INTO head_of_state (name, goverment_type) VALUES ('Walter Thurnherr', 'Federal Chancellor'); -- Switzerland
--INSERT INTO head_of_state (name, goverment_type) VALUES ('Bashar al-Assad', 'President'); -- Syria
INSERT INTO head_of_state (name, goverment_type) VALUES ('Carlos Vila Nova', 'President'); -- São Tomé and Príncipe
INSERT INTO head_of_state (name, goverment_type) VALUES ('Emomali Rahmon', 'President'); -- Tajikistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Samia Suluhu Hassan', 'President'); -- Tanzania
INSERT INTO head_of_state (name, goverment_type) VALUES ('Maha Vajiralongkorn', 'King'); -- Thailand
INSERT INTO head_of_state (name, goverment_type) VALUES ('Faure Gnassingbé', 'President'); -- Togo
INSERT INTO head_of_state (name, goverment_type) VALUES ('Tupou VI', 'King'); -- Tonga
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paula-Mae Weekes', 'President'); -- Trinidad and Tobago
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kaïs Saïed', 'President'); -- Tunisia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Recep Tayyip Erdoğan', 'President'); -- Turkey
INSERT INTO head_of_state (name, goverment_type) VALUES ('Serdar Berdimuhamedow', 'President'); -- Turkmenistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tofiga Vaevalu Falani', 'Governor-General'); -- Tuvalu
INSERT INTO head_of_state (name, goverment_type) VALUES ('Yoweri Museveni', 'President'); -- Uganda
INSERT INTO head_of_state (name, goverment_type) VALUES ('Volodymyr Zelenskyy', 'President'); -- Ukraine
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sheikh Mohamed bin Zayed Al Nahyan', 'President'); -- United Arab Emirates
INSERT INTO head_of_state (name, goverment_type) VALUES ('Charles III', 'King'); -- United Kingdom
INSERT INTO head_of_state (name, goverment_type) VALUES ('Joe Biden', 'President'); -- United States
INSERT INTO head_of_state (name, goverment_type) VALUES ('Luis Lacalle Pou', 'President'); -- Uruguay
INSERT INTO head_of_state (name, goverment_type) VALUES ('Shavkat Mirziyoyev', 'President'); -- Uzbekistan
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nikenike Vurobaravu', 'President'); -- Vanuatu
INSERT INTO head_of_state (name, goverment_type) VALUES ('Pope Francis', 'Sovereign'); -- Vatican City
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nicolás Maduro', 'President'); -- Venezuela
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nguyễn Phú Trọng', 'General Secretary of the Communist Party'); -- Vietnam
INSERT INTO head_of_state (name, goverment_type) VALUES ('Nguyễn Xuân Phúc', 'President'); -- Vietnam
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rashad al-Alimi', 'Chairman of the Presidential Leadership Council'); -- Yemen
INSERT INTO head_of_state (name, goverment_type) VALUES ('Hakainde Hichilema', 'President'); -- Zambia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Emmerson Mnangagwa', 'President'); -- Zimbabwe

-- country

-- TODO: colocar gdp e head_of_state na america latina
-- Feito(v)
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Afghanistan', 40099462, 652864, 61, 'Kabul', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Albania', 2854710, 28748, 99, 'Tirana', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Algeria', 44177969, 2381741, 19, 'Algiers', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('American Samoa (US)', 45035, 199, 226, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Andorra', 79034, 468, 169, 'Andorra la Vella', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Angola', 34503774, 1246700, 28, 'Luanda', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Anguilla (BOT)', 15753, 91, 173, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Antigua and Barbuda', 93219, 442, 211, 'St. John''s (de facto)', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Argentina', 45276780, 2780400, 16, 'Buenos Aires', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Armenia', 2790974, 29743, 94, 'Yerevan', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Artsakh', 120000, 3170, 38, 'Stepanakert', NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Aruba (Netherlands)', 106537, 180, 592, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Australia', 25921089, 7692024, 3, 'Canberra', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Austria', 8922082, 83871, 106, 'Vienna', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Azerbaijan', 10312992, 86600, 119, 'Baku', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bahamas', 407906, 13943, 29, 'Nassau', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bahrain', 1463265, 785, 1864, 'Manama', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bangladesh', 169356251, 148460, 1141, 'Dhaka', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Barbados', 281200, 430, 654, 'Bridgetown', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Belarus', 9578167, 207600, 46, 'Minsk', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Belgium', 11611419, 30528, 380, 'Brussels', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Belize', 400031, 22966, 17, 'Belmopan', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Benin', 12996895, 114763, 113, 'Porto-Novo (official)', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Benin', 12996895, 114763, 113, 'Cotonou (de facto)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bermuda (BOT)', 64185, 53, 1211, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bhutan', 777486, 38394, 20, 'Thimphu', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bolivia', 12079472, 1098581, 11, 'Sucre (constitutional)', 'America');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bolivia', 12079472, 1098581, 11, 'La Paz (administrative)', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bonaire (Netherlands)', 22573, 294, 77, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bosnia and Herzegovina', 3270943, 51209, 64, 'Sarajevo', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Botswana', 2588423, 582000, 4, 'Gaborone', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Brazil', 214326223, 8514877, 25, 'Brasília', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('British Virgin Islands (BOT)', 31122, 151, 206, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Brunei', 445373, 5765, 77, 'Bandar Seri Begawan', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Bulgaria', 6885868, 110912, 62, 'Sofia', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Burkina Faso', 22100683, 272967, 81, 'Ouagadougou', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Burundi', 12551213, 27834, 451, 'Bujumbura (de facto)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Burundi', 12551213, 27834, 451, 'Gitega (official)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cambodia', 16589023, 181035, 92, 'Phnom Penh', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cameroon', 27198628, 475650, 57, 'Yaoundé', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Canada', 38155012, 9093507, 4, 'Ottawa', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cape Verde', 587925, 4033, 146, 'Praia', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cayman Islands (BOT)', 68136, 264, 258, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Central African Republic', 5457154, 622984, 9, 'Bangui', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Chad', 16244513, 1284000, 13, 'N''Djamena', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Chile', 19493184, 756102, 26, 'Valparaíso (legislative)', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Chile', 19493184, 756102, 26, 'Santiago (official)', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('China', 1425893465, 9596961, 149, 'Beijing', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Christmas Island (Australia)', 1843, 135, 14, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cocos (Keeling) Islands (Australia)', 544, 14, 39, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Colombia', 51516562, 1141748, 45, 'Bogotá', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Comoros', 821625, 2235, 368, 'Moroni', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Congo', 5835806, 342000, 17, 'Brazzaville', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cook Islands', 17003, 236, 72, 'Avarua', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Costa Rica', 5153957, 51100, 101, 'San José', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Croatia', 4060135, 56594, 72, 'Zagreb', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cuba', 11256372, 109884, 102, 'Havana', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Curaçao (Netherlands)', 190338, 444, 429, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Cyprus', 1244188, 9251, 134, NULL, 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Czech Republic', 10510751, 78866, 133, 'Prague (official legislative and executive)', 'Europe');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Czech Republic', 10510751, 78866, 133, 'Brno (judiciary)', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('DR Congo', 95894118, 2344858, 41, NULL, 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Denmark', 5854240, 43094, 136, 'Copenhagen', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Djibouti', 1105557, 23200, 48, 'Djibouti City', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Dominica', 72412, 751, 96, 'Roseau', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Dominican Republic', 11117873, 48192, 231, 'Santo Domingo', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('East Timor', 1320942, 14919, 89, 'Dili', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ecuador', 17797737, 256369, 69, 'Quito', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Egypt', 109262178, 1002000, 109, 'Cairo', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('El Salvador', 6314167, 21041, 300, 'San Salvador', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Equatorial Guinea', 1634466, 28051, 58, 'Malabo', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Eritrea', 3620312, 117600, 31, 'Asmara', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Estonia', 1328701, 45227, 29, 'Tallinn', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Eswatini', 1192271, 17363, 69, 'Mbabane (administrative)', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Eswatini', 1192271, 17363, 69, 'Lobamba (royal and legislative)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ethiopia', 120283026, 1104300, 109, 'Addis Ababa', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Falkland Islands (BOT)', 3764, 12173, 0.3, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Faroe Islands (Denmark)', 52889, 1393, 38, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Fiji', 926276, 18272, 51, 'Suva', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Finland', 5535992, 336852, 16, 'Helsinki', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('France', 64531444, 551500, 117, 'Paris', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('French Guiana (France)', 297449, 83534, 4, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('French Polynesia (France)', 304032, 4000, 76, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Gabon', 2341179, 267668, 9, 'Libreville', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Gambia', 2639916, 11295, 234, NULL, 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Georgia', 3688647, 69700, 53, 'Tbilisi', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Germany', 83408554, 357137, 234, 'Berlin', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ghana', 32833031, 238533, 138, 'Accra', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Gibraltar (BOT)', 32669, 6, 5445, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Greece', 10445365, 131957, 79, 'Athens', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Greenland (Denmark)', 56243, 2166086, 0.03, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Grenada', 124610, 344, 362, 'St. George''s', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guadeloupe (France)', 396051, 1705, 232, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guam (US)', 170534, 549, 311, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guatemala', 17608483, 108889, 162, 'Guatemala City', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guernsey (Crown Dependency)', 63065, 63, 1001, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guinea', 13531906, 245857, 55, 'Conakry', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guinea-Bissau', 2060721, 36125, 57, 'Bissau', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Guyana', 804567, 214969, 4, 'Georgetown', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Haiti', 11447569, 27750, 413, 'Port-au-Prince', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Honduras', 10278345, 112492, 91, 'Tegucigalpa', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Hong Kong', 7494578, 1104, 6789, NULL, 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Hungary', 9709786, 93026, 104, 'Budapest', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Iceland', 370335, 103000, 4, 'Reykjavík', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('India', 1407563842, 3287263, 428, 'New Delhi', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Indonesia', 273753191, 1910931, 143, 'Jakarta', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Iran', 87923432, 1628750, 54, 'Tehran', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Iraq', 43533592, 435244, 100, 'Baghdad', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ireland', 4986526, 69825, 71, 'Dublin', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Isle of Man (Crown Dependency)', 84263, 572, 147, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Israel', 8900059, 22072, 403, 'Jerusalem', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Italy', 59240329, 301339, 197, 'Rome', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ivory Coast', 27478249, 322463, 85, 'Yamoussoukro (official)', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ivory Coast', 27478249, 322463, 85, 'Abidjan (former capital; still has many government offices)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Jamaica', 2827695, 10991, 257, 'Kingston', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Japan', 124612530, 377930, 330, 'Tokyo', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Jersey (Crown Dependency)', 109618, 116, 945, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Jordan', 11148278, 89328, 125, 'Amman', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Kazakhstan', 19196465, 2724900, 7, 'Astana', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Kenya', 53005614, 591958, 90, 'Nairobi', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Kiribati', 128874, 726, 178, 'South Tarawa', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Kosovo', 1935259, 10887, 178, 'Pristina', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Kuwait', 4250114, 17818, 239, 'Kuwait City', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Kyrgyzstan', 6527743, 199949, 33, 'Bishkek', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Laos', 7425057, 236800, 31, 'Vientiane', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Latvia', 1873919, 64562, 29, 'Riga', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Lebanon', 5592631, 10452, 535, 'Beirut', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Lesotho', 2281454, 30355, 75, 'Maseru', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Liberia', 5193416, 111369, 47, 'Monrovia', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Libya', 6735277, 1759540, 4, 'Tripoli', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Liechtenstein', 39039, 160, 244, 'Vaduz', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Lithuania', 2786651, 65300, 43, 'Vilnius', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Luxembourg', 639321, 2586, 247, 'Luxembourg', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Macau', 686607, 33, 20806, NULL, 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Madagascar', 28915653, 587295, 49, 'Antananarivo', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Malawi', 19889742, 118484, 168, 'Lilongwe', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Malaysia', 33573874, 330803, 101, 'Kuala Lumpur (official legislative and royal)', 'Asia');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Malaysia', 33573874, 330803, 101, 'Putrajaya (administrative and judicial)', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Maldives', 521457, 300, 1738, 'Malé', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mali', 21904983, 1240192, 18, 'Bamako', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Malta', 526748, 316, 1667, 'Valletta', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Marshall Islands', 42050, 181, 232, 'Majuro', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Martinique (France)', 368796, 1128, 327, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mauritania', 4614974, 1030700, 4, 'Nouakchott', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mauritius', 1298915, 1969, 660, 'Port Louis', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mayotte (France)', 316014, 374, 845, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mexico', 126705138, 1964375, 65, 'Mexico City', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Micronesia', 534606, 702, 762, 'Palikir', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Moldova', 3061506, 33846, 90, 'Chișinău', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Monaco', 36686, 2, 18343, 'Monaco', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mongolia', 3347782, 1564116, 2, 'Ulaanbaatar', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Montenegro', 627859, 13812, 45, 'Podgorica (official)', 'Europe');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Montenegro', 627859, 13812, 45, 'Cetinje (Old Royal Capital present seat of the President)', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Montserrat (BOT)', 4417, 103, 43, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Morocco', 37076584, 446550, 83, 'Rabat', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Mozambique', 32077072, 801590, 40, 'Maputo', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Myanmar', 53798084, 676578, 80, 'Naypyidaw', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Namibia', 2530151, 824268, 3, 'Windhoek', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Nauru', 12511, 21, 596, 'Yaren (de facto)', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Nepal', 30034989, 147181, 204, 'Kathmandu', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Netherlands', 17501696, 33670, 520, 'Amsterdam (official)', 'Europe');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Netherlands', 17501696, 33670, 520, 'The Hague (de facto)', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('New Caledonia (France)', 271407, 18575, 15, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('New Zealand', 5129727, 270467, 19, 'Wellington', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Nicaragua', 6850540, 130373, 53, 'Managua', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Niger', 25252722, 1267000, 20, 'Niamey', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Nigeria', 213401323, 923768, 231, 'Abuja', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Niue', 1937, 260, 7, 'Alofi', NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Norfolk Island (Australia)', 2188, 36, 61, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('North Korea', 25971909, 120538, 215, 'Pyongyang', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('North Macedonia', 2103330, 25713, 82, 'Skopje', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Northern Cyprus', 382836, 3355, 114, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Northern Mariana Islands (US)', 49481, 457, 108, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Norway', 5403021, 323787, 17, 'Oslo', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Oman', 4520471, 309500, 15, 'Muscat', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Pakistan', 231402117, 881913, 262, 'Islamabad', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Palau', 18024, 459, 39, 'Ngerulmud', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Palestine', 5133392, 6020, 853, NULL, 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Panama', 4351267, 75417, 58, 'Panama City', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Papua New Guinea', 9949437, 462840, 21, 'Port Moresby', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Paraguay', 6703799, 406752, 16, 'Asunción', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Peru', 33715471, 1285216, 26, 'Lima', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Philippines', 113880328, 300000, 380, 'Manila', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Pitcairn Islands (BOT)', 47, 5, 9, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Poland', 38307726, 311888, 123, 'Warsaw', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Portugal', 10290103, 92212, 112, 'Lisbon', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Puerto Rico (US)', 3256028, 8870, 367, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Qatar', 2688235, 11607, 232, 'Doha', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Romania', 19328560, 238391, 81, 'Bucharest', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Russia', 145102755, 17098246, 8, 'Moscow', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Rwanda', 13461888, 26338, 511, 'Kigali', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Réunion (France)', 966129, 2513, 384, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saba (Netherlands)', 1911, 13, 147, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Barthélemy (France)', 10861, 25, 434, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Helena Ascension and Tristan da Cunha (BOT)', 5404, 394, 14, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Kitts and Nevis', 47606, 261, 182, 'Basseterre', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Lucia', 179651, 539, 333, 'Castries', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Martin (France)', 31948, 54, 592, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Pierre and Miquelon (France)', 5883, 242, 24, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saint Vincent and the Grenadines', 104332, 389, 268, 'Kingstown', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Samoa', 218764, 2842, 77, 'Apia', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('San Marino', 33745, 61, 553, 'San Marino', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Saudi Arabia', 35950396, 2149690, 17, 'Riyadh', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Senegal', 16876720, 196712, 86, 'Dakar', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Serbia', 7296769, 88361, 83, 'Belgrade', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Seychelles', 106471, 456, 233, 'Victoria', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sierra Leone', 8420641, 72300, 116, 'Freetown', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Singapore', 5453600, 716, 7617, 'Singapore', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sint Eustatius (Netherlands)', 3242, 21, 154, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sint Maarten (Netherlands)', 44042, 34, 1295, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Slovakia', 5447622, 49036, 111, 'Bratislava', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Slovenia', 2119410, 20420, 104, 'Ljubljana', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Solomon Islands', 707851, 28896, 24, 'Honiara', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Somalia', 17065581, 637657, 27, 'Mogadishu', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('South Africa', 59392255, 1221037, 49, 'Bloemfontein (judicial)', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('South Africa', 59392255, 1221037, 49, 'Pretoria (executive)', 'Africa');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('South Africa', 59392255, 1221037, 49, 'Cape Town (legislative)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('South Korea', 51830139, 100148, 518, 'Seoul', 'Asia');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('South Korea', 51830139, 100148, 518, 'Sejong City (de facto)', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('South Sudan', 10748272, 644329, 17, 'Juba', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Spain', 47486935, 505992, 94, 'Madrid', 'Europe');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sri Lanka', 21773441, 65610, 332, 'Colombo (executive judicial)', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sri Lanka', 21773441, 65610, 332, 'Sri Jayawardenepura Kotte (official)', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sudan', 45657202, 1861484, 25, 'Khartoum', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Suriname', 612985, 163820, 4, 'Paramaribo', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Svalbard and Jan Mayen (Norway)', 2939, 62422, 0.05, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Sweden', 10467097, 450295, 23, 'Stockholm', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Switzerland', 8691406, 41285, 211, 'Bern (de facto)', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Syria', 21324367, 185180, 115, 'Damascus', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('São Tomé and Príncipe', 223107, 964, 231, 'São Tomé', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Taiwan', 23859912, 36193, 659, 'Taipei', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tajikistan', 9750064, 143100, 68, 'Dushanbe', 'Asia');
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tanzania', 63588334, 947303, 67, 'Dar es Salaam (de facto judicial)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tanzania', 63588334, 947303, 67, 'Dodoma (official legislative)', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Thailand', 71601103, 513120, 140, 'Bangkok', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Togo', 8644829, 56785, 152, 'Lomé', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tokelau (NZ)', 1849, 12, 154, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tonga', 106017, 747, 142, 'Nukuʻalofa', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Transnistria', 347251, 4163, 83, 'Tiraspol', NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Trinidad and Tobago', 1525663, 5130, 297, 'Port of Spain', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tunisia', 12262946, 163610, 75, 'Tunis', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Turkey', 84775404, 783562, 108, 'Ankara', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Turkmenistan', 6341855, 488100, 13, 'Ashgabat', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Turks and Caicos Islands (BOT)', 45114, 948, 48, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Tuvalu', 11204, 26, 431, 'Funafuti', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('U.S. Virgin Islands (US)', 100091, 347, 288, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Uganda', 45853778, 241550, 190, 'Kampala', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Ukraine', 43531422, 603500, 72, 'Kyiv', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('United Arab Emirates', 9365145, 83600, 112, 'Abu Dhabi', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('United Kingdom', 67281039, 242495, 277, 'London', 'Europe');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('United States', 336997624, 9629091, 35, 'Washington D.C.', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Uruguay', 3426260, 176215, 19, 'Montevideo', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Uzbekistan', 34081449, 447400, 76, 'Tashkent', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Vanuatu', 319137, 12189, 26, 'Port Vila', 'Oceania');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Vatican City', 511, 0, 1043, 'Vatican City', NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Venezuela', 28199867, 912050, 31, 'Caracas', 'America');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Vietnam', 97468029, 330957, 295, 'Hanoi', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Wallis and Futuna (France)', 11627, 142, 82, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Western Sahara', 565581, 266000, 2, 'Laâyoune (declared)', NULL);
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Western Sahara', 565581, 266000, 2, 'Tifariti (de facto)', NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('World (all land)', 7998420000, 148940000, 54, NULL, NULL);
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('World (excluding Antarctica)', 7998420000, 134740000, 59, NULL, NULL);
--INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Yemen', 32981641, 527968, 62, 'Aden (de facto temporary)', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Yemen', 32981641, 527968, 62, 'Sana''a (de jure)', 'Asia');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Zambia', 19473125, 752612, 26, 'Lusaka', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Zimbabwe', 15993524, 390757, 41, 'Harare', 'Africa');
INSERT INTO country (name, population, area, population_density, capital, continent) VALUES ('Åland (Finland)', 30344, 1580, 19, NULL, NULL);

UPDATE country SET gdp = 1894708, head_of_state = 'Jair Bolsonaro' WHERE name = 'Brazil';
UPDATE country SET gdp = 1424533, head_of_state = 'Andrés Manuel López Obrador' WHERE name = 'Mexico';
UPDATE country SET gdp = 342919, head_of_state = 'Gustavo Petro' WHERE name = 'Colombia';
UPDATE country SET gdp = 630698, head_of_state = 'Alberto Fernández' WHERE name = 'Argentina';
UPDATE country SET gdp = 239333, head_of_state = 'Dina Boluarte' WHERE name = 'Peru';
UPDATE country SET gdp = 82145, head_of_state = 'Nicolás Maduro' WHERE name = 'Venezuela';
UPDATE country SET gdp = 310866, head_of_state = 'Gabriel Boric' WHERE name = 'Chile';
UPDATE country SET gdp = 91318, head_of_state = 'Alejandro Giammattei' WHERE name = 'Guatemala';
UPDATE country SET gdp = 115469, head_of_state = 'Guillermo Lasso' WHERE name = 'Ecuador';
UPDATE country SET gdp = 43431, head_of_state = 'Luis Arce' WHERE name = 'Bolivia';
UPDATE country SET gdp = 30568, head_of_state = 'Xiomara Castro' WHERE name = 'Honduras';
UPDATE country SET gdp = 41855, head_of_state = 'Mario Abdo Benítez' WHERE name = 'Paraguay';
UPDATE country SET gdp = 15695, head_of_state = 'Daniel Ortega' WHERE name = 'Nicaragua';
UPDATE country SET gdp = 31989, head_of_state = 'Nayib Bukele' WHERE name = 'El Salvador';
UPDATE country SET gdp = 68489, head_of_state = 'Rodrigo Chaves Robles' WHERE name = 'Costa Rica';
UPDATE country SET gdp = 71085, head_of_state = 'Laurentino Cortizo' WHERE name = 'Panama';
UPDATE country SET gdp = 71161, head_of_state = 'Luis Lacalle Pou' WHERE name = 'Uruguay';
UPDATE country SET gdp = 14839, head_of_state = 'Irfaan Ali' WHERE name = 'Guyana';
UPDATE country SET gdp = 3011, head_of_state = 'Chan Santokhi' WHERE name = 'Suriname';
UPDATE country SET gdp = 2676, head_of_state = 'Dame Froyla Tzalam' WHERE name = 'Belize';

UPDATE head_of_state SET sex = 'M' WHERE name = 'Jair Bolsonaro';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Andrés Manuel López Obrador';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Gustavo Petro';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Alberto Fernández';
UPDATE head_of_state SET sex = 'F' WHERE name = 'Dina Boluarte';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Nicolás Maduro';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Gabriel Boric';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Alejandro Giammattei';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Guillermo Lasso';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Luis Arce';
UPDATE head_of_state SET sex = 'F' WHERE name = 'Xiomara Castro';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Mario Abdo Benítez';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Daniel Ortega';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Nayib Bukele';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Rodrigo Chaves Robles';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Laurentino Cortizo';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Luis Lacalle Pou';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Irfaan Ali';
UPDATE head_of_state SET sex = 'M' WHERE name = 'Chan Santokhi';
UPDATE head_of_state SET sex = 'F' WHERE name = 'Dame Froyla Tzalam';

-- language

INSERT INTO language VALUES ('Abkhaz');
INSERT INTO language VALUES ('Afar');
INSERT INTO language VALUES ('Afrikaans');
INSERT INTO language VALUES ('Albanian');
INSERT INTO language VALUES ('Amharic');
INSERT INTO language VALUES ('Arabic');
INSERT INTO language VALUES ('Armenian');
INSERT INTO language VALUES ('Aymara');
INSERT INTO language VALUES ('Azerbaijani');
INSERT INTO language VALUES ('Baure');
INSERT INTO language VALUES ('Belarusian');
INSERT INTO language VALUES ('Bengali');
INSERT INTO language VALUES ('Bulgarian');
INSERT INTO language VALUES ('Burmese');
INSERT INTO language VALUES ('Castilian');
INSERT INTO language VALUES ('Catalan');
INSERT INTO language VALUES ('Cayubaba');
INSERT INTO language VALUES ('Chewa');
INSERT INTO language VALUES ('Chibarwe');
INSERT INTO language VALUES ('Chichewa');
INSERT INTO language VALUES ('Chilean Spanish');
INSERT INTO language VALUES ('Chimán');
INSERT INTO language VALUES ('Chipaya');
INSERT INTO language VALUES ('Chácobo');
INSERT INTO language VALUES ('Cocos Malay');
INSERT INTO language VALUES ('Comorian');
INSERT INTO language VALUES ('Cook Islands Māori');
INSERT INTO language VALUES ('Croatian');
INSERT INTO language VALUES ('Czech');
INSERT INTO language VALUES ('Danish');
INSERT INTO language VALUES ('Dhivehi');
INSERT INTO language VALUES ('Dutch');
INSERT INTO language VALUES ('Dzongkha');
INSERT INTO language VALUES ('Ejja');
INSERT INTO language VALUES ('English');
INSERT INTO language VALUES ('Estonian');
INSERT INTO language VALUES ('Fiji Hindi');
INSERT INTO language VALUES ('Fijian');
INSERT INTO language VALUES ('Filipino');
INSERT INTO language VALUES ('Finnish');
INSERT INTO language VALUES ('French');
INSERT INTO language VALUES ('FrenchGerman');
INSERT INTO language VALUES ('Frisian');
INSERT INTO language VALUES ('Georgian');
INSERT INTO language VALUES ('German');
INSERT INTO language VALUES ('Greek');
INSERT INTO language VALUES ('Guaraní');
INSERT INTO language VALUES ('Guarayu');
INSERT INTO language VALUES ('Haitian Creole');
INSERT INTO language VALUES ('Hebrew');
INSERT INTO language VALUES ('Hindi');
INSERT INTO language VALUES ('Hiri PNG Sign Tok Pisin');
INSERT INTO language VALUES ('Hungarian');
INSERT INTO language VALUES ('Icelandic Sign Language');
INSERT INTO language VALUES ('Icelandic');
INSERT INTO language VALUES ('Ignaciano');
INSERT INTO language VALUES ('Indonesian');
INSERT INTO language VALUES ('Irish');
INSERT INTO language VALUES ('Italian');
INSERT INTO language VALUES ('Itonama');
INSERT INTO language VALUES ('Japanese');
INSERT INTO language VALUES ('Kalanga');
INSERT INTO language VALUES ('Kallawaya');
INSERT INTO language VALUES ('Kazakh');
INSERT INTO language VALUES ('Khmer');
INSERT INTO language VALUES ('Khoisan');
INSERT INTO language VALUES ('Kinyarwanda');
INSERT INTO language VALUES ('Kirundi');
INSERT INTO language VALUES ('Korean Sign Language');
INSERT INTO language VALUES ('Korean');
INSERT INTO language VALUES ('Kurdish');
INSERT INTO language VALUES ('Kyrgyz');
INSERT INTO language VALUES ('Language');
INSERT INTO language VALUES ('Lao');
INSERT INTO language VALUES ('Latin (formerly)');
INSERT INTO language VALUES ('Latvian');
INSERT INTO language VALUES ('Leco');
INSERT INTO language VALUES ('Lithuanian');
INSERT INTO language VALUES ('Luxembourgish');
INSERT INTO language VALUES ('Macedonian');
INSERT INTO language VALUES ('Machineri');
INSERT INTO language VALUES ('Malagasy');
INSERT INTO language VALUES ('Malay');
INSERT INTO language VALUES ('Maltese');
INSERT INTO language VALUES ('Mandarin Chinese');
INSERT INTO language VALUES ('Maropa');
INSERT INTO language VALUES ('Mauritian Creole (Also known as ''Morisien'')');
INSERT INTO language VALUES ('Moldovan');
INSERT INTO language VALUES ('Mongolian');
INSERT INTO language VALUES ('Montenegrin');
INSERT INTO language VALUES ('Moré');
INSERT INTO language VALUES ('Mosetén');
INSERT INTO language VALUES ('Motu');
INSERT INTO language VALUES ('Movima');
INSERT INTO language VALUES ('Nambya');
INSERT INTO language VALUES ('Nauruan');
INSERT INTO language VALUES ('Ndau');
INSERT INTO language VALUES ('Ndebele');
INSERT INTO language VALUES ('Nepali');
INSERT INTO language VALUES ('Niuean');
INSERT INTO language VALUES ('Norfuk');
INSERT INTO language VALUES ('NorwegianSami languages');
INSERT INTO language VALUES ('Oromo');
INSERT INTO language VALUES ('Ossetian');
INSERT INTO language VALUES ('Pacawara');
INSERT INTO language VALUES ('Palauan');
INSERT INTO language VALUES ('Persian (DarinPashto');
INSERT INTO language VALUES ('Persian');
INSERT INTO language VALUES ('Peruvian Asháninka');
INSERT INTO language VALUES ('Polish');
INSERT INTO language VALUES ('Portuguese');
INSERT INTO language VALUES ('Puquina');
INSERT INTO language VALUES ('Quechua');
INSERT INTO language VALUES ('Romanian');
INSERT INTO language VALUES ('Russian');
INSERT INTO language VALUES ('Sango');
INSERT INTO language VALUES ('Serbian');
INSERT INTO language VALUES ('Seychellois Creole');
INSERT INTO language VALUES ('Shangani');
INSERT INTO language VALUES ('Shona');
INSERT INTO language VALUES ('Sign Xhosa');
INSERT INTO language VALUES ('Sinhala');
INSERT INTO language VALUES ('Sirionó');
INSERT INTO language VALUES ('Slovak');
INSERT INTO language VALUES ('Slovene');
INSERT INTO language VALUES ('Somali');
INSERT INTO language VALUES ('Sotho');
INSERT INTO language VALUES ('Southern Northern Zulu');
INSERT INTO language VALUES ('Spanish');
INSERT INTO language VALUES ('SpanishQuechua');
INSERT INTO language VALUES ('SpanishnAymaraAraona');
INSERT INTO language VALUES ('Standard Arabic');
INSERT INTO language VALUES ('Swahili');
INSERT INTO language VALUES ('Swazi');
INSERT INTO language VALUES ('Swedish');
INSERT INTO language VALUES ('Tacana');
INSERT INTO language VALUES ('Tajik');
INSERT INTO language VALUES ('Tamazight');
INSERT INTO language VALUES ('Tamil');
INSERT INTO language VALUES ('Tapieté');
INSERT INTO language VALUES ('Tetum');
INSERT INTO language VALUES ('Thai');
INSERT INTO language VALUES ('Tigrinya');
INSERT INTO language VALUES ('Tokelauan');
INSERT INTO language VALUES ('Tonga');
INSERT INTO language VALUES ('Tongan');
INSERT INTO language VALUES ('Toromona');
INSERT INTO language VALUES ('Trinitario');
INSERT INTO language VALUES ('Tsonga');
INSERT INTO language VALUES ('Tswana');
INSERT INTO language VALUES ('Turkish');
INSERT INTO language VALUES ('Turkmen');
INSERT INTO language VALUES ('Tuvaluan');
INSERT INTO language VALUES ('Ukrainian');
INSERT INTO language VALUES ('Urdu');
INSERT INTO language VALUES ('Uzbek');
INSERT INTO language VALUES ('Venda');
INSERT INTO language VALUES ('Venezuelan Sign Language');
INSERT INTO language VALUES ('Vietnamese');
INSERT INTO language VALUES ('Weenhayek');
INSERT INTO language VALUES ('Xhosa');
INSERT INTO language VALUES ('Yaminawa');
INSERT INTO language VALUES ('Yuki');
INSERT INTO language VALUES ('Yuracaré');

INSERT INTO language_country VALUES ('Portuguese', 'Brazil');
INSERT INTO language_country VALUES ('Spanish', 'Mexico');
INSERT INTO language_country VALUES ('Spanish', 'Colombia');
INSERT INTO language_country VALUES ('Spanish', 'Argentina');
INSERT INTO language_country VALUES ('Spanish', 'Peru');
INSERT INTO language_country VALUES ('Quechua', 'Peru');
INSERT INTO language_country VALUES ('Aymara', 'Peru');
INSERT INTO language_country VALUES ('Peruvian Asháninka', 'Peru');
INSERT INTO language_country VALUES ('Spanish', 'Venezuela');
INSERT INTO language_country VALUES ('Venezuelan Sign Language', 'Venezuela');
INSERT INTO language_country VALUES ('Chilean Spanish', 'Chile');
INSERT INTO language_country VALUES ('Spanish', 'Guatemala');
INSERT INTO language_country VALUES ('Spanish', 'Ecuador');
INSERT INTO language_country VALUES ('Quechua', 'Ecuador');
INSERT INTO language_country VALUES ('Castilian', 'Bolivia');
INSERT INTO language_country VALUES ('Spanish', 'Honduras');
INSERT INTO language_country VALUES ('Spanish', 'Paraguay');
INSERT INTO language_country VALUES ('Guaraní', 'Paraguay');
INSERT INTO language_country VALUES ('Spanish', 'Nicaragua');
INSERT INTO language_country VALUES ('Spanish', 'El Salvador');
INSERT INTO language_country VALUES ('Spanish', 'Costa Rica');
INSERT INTO language_country VALUES ('Spanish', 'Panama');
INSERT INTO language_country VALUES ('Spanish', 'Uruguay');
INSERT INTO language_country VALUES ('English', 'Guyana');
INSERT INTO language_country VALUES ('Dutch', 'Suriname');
INSERT INTO language_country VALUES ('English', 'Belize');

-- currency

INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Russian rouble', '₽', 'RUB', 'Kopeck', 100); -- Abkhazia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Afghan afghani', 'Af or Afs (pl.)', 'AFN', 'Pul', 100); -- Afghanistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Akrotiri and Dhekelia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Albanian lek', 'Lek', 'ALL', 'Qintar', 100); -- Albania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Alderney
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Algerian dinar', 'DA', 'DZD', 'Santeem', 100); -- Algeria
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Andorra
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Angolan kwanza', 'Kz', 'AOA', 'Cêntimo', 100); -- Angola
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Anguilla
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Antigua and Barbuda
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Argentine peso', '$', 'ARS', 'Centavo', 100); -- Argentina
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Armenian dram', '֏', 'AMD', 'Luma', 100); -- Armenia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Armenian dram', '֏', 'AMD', 'Luma', 100); -- Artsakh
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Artsakh dram', 'դր.', NULL, 'Luma', 100); -- Artsakh
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Aruban florin', 'ƒ', 'AWG', 'Cent', 100); -- Aruba
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Saint Helena pound', '£', 'SHP', 'Penny', 100); -- Ascension Island
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Australia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Austria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Azerbaijani manat', '₼', 'AZN', 'Qəpik', 100); -- Azerbaijan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bahamian dollar', '$', 'BSD', 'Cent', 100); -- Bahamas, The
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bahraini dinar', 'BD', 'BHD', 'Fils', 1000); -- Bahrain
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bangladeshi taka', '৳', 'BDT', 'Poisha', 100); -- Bangladesh
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Barbadian dollar', '$', 'BBD', 'Cent', 100); -- Barbados
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Belarusian rubel', 'Rbl or Rbls (pl.)', 'BYN', 'Copeck', 100); -- Belarus
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Belgium
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Belize dollar', '$', 'BZD', 'Cent', 100); -- Belize
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Benin
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bermudian dollar', '$', 'BMD', 'Cent', 100); -- Bermuda
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bhutanese ngultrum', 'Nu', 'BTN', 'Chetrum', 100); -- Bhutan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Indian rupee', '₹', 'INR', 'Paisa', 100); -- Bhutan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bolivian boliviano', 'Bs', 'BOB', 'Centavo', 100); -- Bolivia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Bonaire
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bosnia and Herzegovina convertible mark', 'KM', 'BAM', 'Fening', 100); -- Bosnia and Herzegovina
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Botswana pula', 'P', 'BWP', 'Thebe', 100); -- Botswana
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Brazilian real', 'R$', 'BRL', 'Centavo', 100); -- Brazil
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- British Indian Ocean Territory
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- British Virgin Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Brunei dollar', '$', 'BND', 'Sen', 100); -- Brunei
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Singapore dollar', '$', 'SGD', 'Cent', 100); -- Brunei
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bulgarian lev', 'Lev', 'BGN', 'Stotinka', 100); -- Bulgaria
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Burkina Faso
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Burundian franc', 'Fr', 'BIF', 'Centime', 100); -- Burundi
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cambodian riel', 'CR', 'KHR', 'Sen', 100); -- Cambodia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Cameroon
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Canadian dollar', '$', 'CAD', 'Cent', 100); -- Canada
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cape Verdean escudo', '$', 'CVE', 'Centavo', 100); -- Cape Verde
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cayman Islands dollar', '$', 'KYD', 'Cent', 100); -- Cayman Islands
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bitcoin (as legal tender)', '₿', NULL, 'Satoshi', 100000000); -- Central African Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Central African Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Chad
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Chilean peso', '$', 'CLP', 'Centavo', 100); -- Chile
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Republic of Renminbi', '¥', 'CNY', 'Jiao', 10); -- China, People
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Colombian peso', '$', 'COP', 'Centavo', 100); -- Colombia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Comorian franc', 'Fr', 'KMF', 'Centime', 100); -- Comoros
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Congolese franc', 'Fr', 'CDF', 'Centime', 100); -- Congo, Democratic Republic of the
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Congo, Republic of the
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cook Islands dollar', '$', NULL, 'Cent', 100); -- Cook Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- Cook Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Costa Rican colón', '₡', 'CRC', 'Céntimo', 100); -- Costa Rica
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Croatian kuna', 'kn', 'HRK', 'Lipa', 100); -- Croatia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cuban peso', '$', 'CUP', 'Centavo', 100); -- Cuba
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Netherlands Antillean guilder', 'ƒ', 'ANG', 'Cent', 100); -- Curaçao
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Cyprus
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Czech koruna', 'Kč', 'CZK', 'Heller', 100); -- Czech Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Côte d voire
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Danish krone', 'kr', 'DKK', 'Øre', 100); -- Denmark
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Djiboutian franc', 'Fr', 'DJF', 'Centime', 100); -- Djibouti
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Dominica
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Dominican peso', '$', 'DOP', 'Centavo', 100); -- Dominican Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Centavo', 100); -- East Timor
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Centavo', 100); -- Ecuador
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Egyptian pound', 'LE', 'EGP', 'Piastre', 100); -- Egypt
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bitcoin (as legal tender)', '₿', NULL, 'Satoshi', 100000000); -- El Salvador
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- El Salvador
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Equatorial Guinea
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eritrean nakfa', 'Nkf', 'ERN', 'Cent', 100); -- Eritrea
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Estonia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- Eswatini
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swazi lilangeni', 'L or E (pl.)', 'SZL', 'Cent', 100); -- Eswatini
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ethiopian birr', 'Br', 'ETB', 'Santim', 100); -- Ethiopia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Falkland Islands pound', '£', 'FKP', 'Penny', 100); -- Falkland Islands
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Danish krone', 'kr', 'DKK', 'Øre', 100); -- Faroe Islands
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Faroese króna', 'kr', NULL, 'Oyra', 100); -- Faroe Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Fijian dollar', '$', 'FJD', 'Cent', 100); -- Fiji
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Sentti', 100); -- Finland
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- France
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('CFP franc', 'Fr', 'XPF', 'Centime', 100); -- French Polynesia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Gabon
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Gambian dalasi', 'D', 'GMD', 'Butut', 100); -- Gambia, The
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Georgian lari', '₾', 'GEL', 'Tetri', 100); -- Georgia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Germany
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ghanaian cedi', '₵', 'GHS', 'Pesewa', 100); -- Ghana
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Gibraltar pound', '£', 'GIP', 'Penny', 100); -- Gibraltar
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Greece
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Danish krone', 'kr', 'DKK', 'Øre', 100); -- Greenland
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Grenada
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guatemalan quetzal', 'Q', 'GTQ', 'Centavo', 100); -- Guatemala
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guernsey pound', '£', NULL, 'Penny', 100); -- Guernsey
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Guernsey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guinean franc', 'Fr', 'GNF', 'Centime', 100); -- Guinea
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Guinea-Bissau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guyanese dollar', '$', 'GYD', 'Cent', 100); -- Guyana
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Haitian gourde', 'G', 'HTG', 'Centime', 100); -- Haiti
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Honduran lempira', 'L', 'HNL', 'Centavo', 100); -- Honduras
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Hong Kong dollar', '$', 'HKD', 'Cent', 100); -- Hong Kong
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Hungarian forint', 'Ft', 'HUF', 'Fillér', 100); -- Hungary
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Icelandic króna', 'kr', 'ISK', 'Eyrir', 100); -- Iceland
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Indian rupee', '₹', 'INR', 'Paisa', 100); -- India
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Indonesian rupiah', 'Rp', 'IDR', 'Sen', 100); -- Indonesia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Iranian rial', 'Rl or Rls (pl.)', 'IRR', 'Rial', 1); -- Iran
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Iraqi dinar', 'ID', 'IQD', 'Fils', 1000); -- Iraq
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Ireland
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Manx pound', '£', NULL, 'Penny', 100); -- Isle of Man
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Isle of Man
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Israeli new shekel', '₪', 'ILS', 'Agora', 100); -- Israel
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Italy
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jamaican dollar', '$', 'JMD', 'Cent', 100); -- Jamaica
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Japanese yen', '¥', 'JPY', 'Sen', 100); -- Japan
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jersey pound', '£', NULL, 'Penny', 100); -- Jersey
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Jersey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jordanian dinar', 'JD', 'JOD', 'Piastre', 100); -- Jordan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kazakhstani tenge', '₸', 'KZT', 'Tıyn', 100); -- Kazakhstan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kenyan shilling', 'Sh or Shs (pl.)', 'KES', 'Cent', 100); -- Kenya
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Kiribati
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kiribati dollar', '$', NULL, 'Cent', 100); -- Kiribati
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('North Korean won', '₩', 'KPW', 'Chon', 100); -- Korea, North
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South Korean won', '₩', 'KRW', 'Jeon', 100); -- Korea, South
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Kosovo
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kuwaiti dinar', 'KD', 'KWD', 'Fils', 1000); -- Kuwait
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kyrgyz som', 'som', 'KGS', 'Tyiyn', 100); -- Kyrgyzstan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Lao kip', '₭', 'LAK', 'Att', 100); -- Laos
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Latvia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Lebanese pound', 'LL', 'LBP', 'Piastre', 100); -- Lebanon
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Lesotho loti', 'L or M (pl.)', 'LSL', 'Sente', 100); -- Lesotho
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- Lesotho
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Liberian dollar', '$', 'LRD', 'Cent', 100); -- Liberia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Libyan dinar', 'LD', 'LYD', 'Dirham', 1000); -- Libya
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swiss franc', 'Fr', 'CHF', 'Rappen', 100); -- Liechtenstein
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Lithuania
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Luxembourg
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Hong Kong dollar', '$', 'HKD', 'Cent', 100); -- Macau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Macanese pataca', 'MOP$', 'MOP', 'Avo', 100); -- Macau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Malagasy ariary', 'Ar', 'MGA', 'Iraimbilanja', 5); -- Madagascar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Malawian kwacha', 'K', 'MWK', 'Tambala', 100); -- Malawi
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Malaysian ringgit', 'RM', 'MYR', 'Sen', 100); -- Malaysia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Maldivian rufiyaa', 'Rf', 'MVR', 'Laari', 100); -- Maldives
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Mali
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Malta
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Marshall Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mauritanian ouguiya', 'UM', 'MRU', 'Khoums', 5); -- Mauritania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mauritian rupee', 'Re or Rs (pl.)', 'MUR', 'Cent', 100); -- Mauritius
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mexican peso', '$', 'MXN', 'Centavo', 100); -- Mexico
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Micronesia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Moldovan leu', 'Leu or Lei (pl.)', 'MDL', 'Ban', 100); -- Moldova
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Monaco
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mongolian tögrög', '₮', 'MNT', 'Möngö', 100); -- Mongolia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Montenegro
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Montserrat
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Moroccan dirham', 'DH', 'MAD', 'Centime', 100); -- Morocco
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mozambican metical', 'Mt', 'MZN', 'Centavo', 100); -- Mozambique
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Burmese kyat', 'K or Ks (pl.)', 'MMK', 'Pya', 100); -- Myanmar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Namibian dollar', '$', 'NAD', 'Cent', 100); -- Namibia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- Namibia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Nauru
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Nepalese rupee', 'Re or Rs (pl.)', 'NPR', 'Paisa', 100); -- Nepal
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Netherlands
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('CFP franc', 'Fr', 'XPF', 'Centime', 100); -- New Caledonia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- New Zealand
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Nicaraguan córdoba', 'C$', 'NIO', 'Centavo', 100); -- Nicaragua
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Niger
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Nigerian naira', '₦', 'NGN', 'Kobo', 100); -- Nigeria
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- Niue
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Niue dollar', '$', NULL, 'Cent', 100); -- Niue
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Macedonian denar', 'DEN', 'MKD', 'Deni', 100); -- North Macedonia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Turkish lira', '₺', 'TRY', 'Kuruş', 100); -- Northern Cyprus
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Norwegian krone', 'kr', 'NOK', 'Øre', 100); -- Norway
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Omani rial', 'RO', 'OMR', 'Baisa', 1000); -- Oman
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Pakistani rupee', 'Re or Rs (pl.)', 'PKR', 'Paisa', 100); -- Pakistan
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Palau
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Israeli new shekel', '₪', 'ILS', 'Agora', 100); -- Palestine
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jordanian dinar', 'JD', 'JOD', 'Piastre', 100); -- Palestine
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Panamanian balboa', 'B/', 'PAB', 'Centésimo', 100); -- Panama
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Panama
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Papua New Guinean kina', 'K', 'PGK', 'Toea', 100); -- Papua New Guinea
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Paraguayan guaraní', '₲', 'PYG', 'Céntimo', 100); -- Paraguay
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Peruvian sol', 'S/', 'PEN', 'Céntimo', 100); -- Peru
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Philippine peso', '₱', 'PHP', 'Sentimo', 100); -- Philippines
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- Pitcairn Islands
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Pitcairn Islands dollar', '$', NULL, 'Cent', 100); -- Pitcairn Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Polish złoty', 'zł', 'PLN', 'Grosz', 100); -- Poland
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Portugal
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Qatari riyal', 'QR', 'QAR', 'Dirham', 100); -- Qatar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Romanian leu', 'Leu or Lei (pl.)', 'RON', 'Ban', 100); -- Romania
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Russian rouble', '₽', 'RUB', 'Kopeck', 100); -- Russia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Rwandan franc', 'Fr', 'RWF', 'Centime', 100); -- Rwanda
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Saba
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Algerian dinar', 'DA', 'DZD', 'Santeem', 100); -- Sahrawi Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mauritanian ouguiya', 'UM', 'MRU', 'Khoums', 5); -- Sahrawi Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Moroccan dirham', 'DH', 'MAD', 'Centime', 100); -- Sahrawi Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sahrawi peseta', 'Pta or Pts (pl.)', NULL, 'Centime', 100); -- Sahrawi Republic
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Saint Helena pound', '£', 'SHP', 'Penny', 100); -- Saint Helena
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Saint Kitts and Nevis
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Saint Lucia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Saint Vincent and the Grenadines
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Samoan tālā', '$', 'WST', 'Sene', 100); -- Samoa
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- San Marino
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Saudi riyal', 'Rl or Rls (pl.)', 'SAR', 'Halala', 100); -- Saudi Arabia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Senegal
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Serbian dinar', 'DIN', 'RSD', 'Para', 100); -- Serbia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Seychellois rupee', 'Re or Rs (pl.)', 'SCR', 'Cent', 100); -- Seychelles
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sierra Leonean leone', 'Le', 'SLE', 'Cent', 100); -- Sierra Leone
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Brunei dollar', '$', 'BND', 'Sen', 100); -- Singapore
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Singapore dollar', '$', 'SGD', 'Cent', 100); -- Singapore
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Sint Eustatius
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Netherlands Antillean guilder', 'ƒ', 'ANG', 'Cent', 100); -- Sint Maarten
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Slovakia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Slovenia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Solomon Islands dollar', '$', 'SBD', 'Cent', 100); -- Solomon Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Somali shilling', 'Sh or Shs (pl.)', 'SOS', 'Cent', 100); -- Somalia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Somaliland shilling', 'Sh or Shs (pl.)', NULL, 'Cent', 100); -- Somaliland
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- South Africa
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Russian rouble', '₽', 'RUB', 'Kopeck', 100); -- South Ossetia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South Sudanese pound', NULL, 'SSP', 'Piaster', 100); -- South Sudan
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Spain
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sri Lankan rupee', 'Re or Rs (pl.)', 'LKR', 'Cent', 100); -- Sri Lanka
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sudanese pound', 'LS', 'SDG', 'Piastre', 100); -- Sudan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Surinamese dollar', '$', 'SRD', 'Cent', 100); -- Suriname
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swedish krona', 'kr', 'SEK', 'Öre', 100); -- Sweden
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swiss franc', 'Fr', 'CHF', 'Rappen', 100); -- Switzerland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Syrian pound', 'LS', 'SYP', 'Piastre', 100); -- Syria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('São Tomé and Príncipe dobra', 'Db', 'STN', 'Cêntimo', 100); -- São Tomé and Príncipe
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Taiwan dollar', '$', 'TWD', 'Cent', 100); -- Taiwan, Republic of China
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tajikistani somoni', 'SM', 'TJS', 'Diram', 100); -- Tajikistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tanzanian shilling', 'Sh or Shs (pl.)', 'TZS', 'Cent', 100); -- Tanzania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Thai baht', '฿', 'THB', 'Satang', 100); -- Thailand
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Togo
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tongan paʻanga', 'T$', 'TOP', 'Seniti', 100); -- Tonga
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Transnistrian ruble', 'р', NULL, 'Kopeck', 100); -- Transnistria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Trinidad and Tobago dollar', '$', 'TTD', 'Cent', 100); -- Trinidad and Tobago
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tunisian dinar', 'DT', 'TND', 'Millime', 1000); -- Tunisia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Turkish lira', '₺', 'TRY', 'Kuruş', 100); -- Turkey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Turkmenistani manat', 'm', 'TMT', 'Tenge', 100); -- Turkmenistan
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Turks and Caicos Islands
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Tuvalu
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tuvaluan dollar', '$', NULL, 'Cent', 100); -- Tuvalu
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ugandan shilling', 'Sh or Shs (pl.)', 'UGX', NULL, NULL); -- Uganda
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ukrainian hryvnia', '₴', 'UAH', 'Kopeck', 100); -- Ukraine
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United Arab Emirates dirham', 'Dh or Dhs (pl.)', 'AED', 'Fils', 100); -- United Arab Emirates
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- United Kingdom
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- United States
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Uruguayan peso', '$', 'UYU', 'Centésimo', 100); -- Uruguay
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Uzbekistani soum', 'soum', 'UZS', 'Tiyin', 100); -- Uzbekistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Vanuatu vatu', 'VT', 'VUV', 'Cent', 100); -- Vanuatu
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Vatican City
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Venezuelan digital bolívar', 'Bs.D', 'VED', 'Céntimo', 100); -- Venezuela
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Venezuelan sovereign bolívar', 'Bs.S', 'VES', 'Céntimo', 100); -- Venezuela
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Vietnamese đồng', '₫', 'VND', 'Hào', 10); -- Vietnam
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('CFP franc', 'Fr', 'XPF', 'Centime', 100); -- Wallis and Futuna
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Yemeni rial', 'Rl or Rls (pl.)', 'YER', 'Fils', 100); -- Yemen
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Zambian kwacha', 'K', 'ZMW', 'Ngwee', 100); -- Zambia
--INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('RTGS dollar', '$', NULL, 'Cent', 100); -- Zimbabwe

-- currency_country

INSERT INTO currency_country VALUES ('BRL', 'Brazil');
INSERT INTO currency_country VALUES ('MXN', 'Mexico');
INSERT INTO currency_country VALUES ('COP', 'Colombia');
INSERT INTO currency_country VALUES ('ARS', 'Argentina');
INSERT INTO currency_country VALUES ('PEN', 'Peru');
INSERT INTO currency_country VALUES ('VES', 'Venezuela');
INSERT INTO currency_country VALUES ('VED', 'Venezuela');
INSERT INTO currency_country VALUES ('CLP', 'Chile');
INSERT INTO currency_country VALUES ('GTQ', 'Guatemala');
INSERT INTO currency_country VALUES ('USD', 'Ecuador');
INSERT INTO currency_country VALUES ('BOB', 'Bolivia');
INSERT INTO currency_country VALUES ('HNL', 'Honduras');
INSERT INTO currency_country VALUES ('PYG', 'Paraguay');
INSERT INTO currency_country VALUES ('NIO', 'Nicaragua');
INSERT INTO currency_country VALUES ('USD', 'El Salvador');
--INSERT INTO currency_country VALUES ('Bitcoin', 'El Salvador'); NO iso_code
INSERT INTO currency_country VALUES ('CRC', 'Costa Rica');
INSERT INTO currency_country VALUES ('PAB', 'Panama');
INSERT INTO currency_country VALUES ('USD', 'Panama');
INSERT INTO currency_country VALUES ('UYU', 'Uruguay');
INSERT INTO currency_country VALUES ('GYD', 'Guyana');
INSERT INTO currency_country VALUES ('SRD', 'Suriname');
INSERT INTO currency_country VALUES ('BZD', 'Belize');

-- religion

INSERT INTO religion VALUES ('Christian');
INSERT INTO religion VALUES ('Muslim');
INSERT INTO religion VALUES ('Irreligion');
INSERT INTO religion VALUES ('Hindu');
INSERT INTO religion VALUES ('Buddhist');
INSERT INTO religion VALUES ('Folk religion');
INSERT INTO religion VALUES ('Other religion');
INSERT INTO religion VALUES ('Jewish');

-- religion_country

-- TODO: só america latina adicionar no religion_country
-- Feito(v)
INSERT INTO religion_country VALUES ('Christian','Brazil', 183310550);
INSERT INTO religion_country VALUES ('Muslim','Brazil', 40000);
INSERT INTO religion_country VALUES ('Irreligion','Brazil', 15401050);
INSERT INTO religion_country VALUES ('Hindu','Brazil', 0);
INSERT INTO religion_country VALUES ('Buddhist','Brazil', 194950);
INSERT INTO religion_country VALUES ('Folk religion','Brazil', 5458600);
INSERT INTO religion_country VALUES ('Other religion','Brazil', 389900);
INSERT INTO religion_country VALUES ('Jewish','Brazil', 110000);

INSERT INTO religion_country VALUES ('Christian','Mexico', 107862420);
INSERT INTO religion_country VALUES ('Muslim','Mexico', 2000);
INSERT INTO religion_country VALUES ('Irreligion','Mexico', 5330740);
INSERT INTO religion_country VALUES ('Hindu','Mexico', 0);
INSERT INTO religion_country VALUES ('Buddhist','Mexico', 107000);
INSERT INTO religion_country VALUES ('Folk religion','Mexico', 70000);
INSERT INTO religion_country VALUES ('Other religion','Mexico', 20000);
INSERT INTO religion_country VALUES ('Jewish','Mexico', 70000);

INSERT INTO religion_country VALUES ('Christian','Colombia', 41500000);
INSERT INTO religion_country VALUES ('Muslim','Colombia', 100000);
INSERT INTO religion_country VALUES ('Irreligion','Colombia', 5500140);
INSERT INTO religion_country VALUES ('Hindu','Colombia', 50.000);
INSERT INTO religion_country VALUES ('Buddhist','Colombia', 50.000);
INSERT INTO religion_country VALUES ('Folk religion','Colombia', 500320);
INSERT INTO religion_country VALUES ('Other religion','Colombia', 1.000000);
INSERT INTO religion_country VALUES ('Jewish','Colombia', 50.000);

INSERT INTO religion_country VALUES ('Christian','Argentina', 34429320);
INSERT INTO religion_country VALUES ('Muslim','Argentina', 404100);
INSERT INTO religion_country VALUES ('Irreligion','Argentina', 4930020);
INSERT INTO religion_country VALUES ('Hindu','Argentina', 0);
INSERT INTO religion_country VALUES ('Buddhist','Argentina', 20000);
INSERT INTO religion_country VALUES ('Folk religion','Argentina', 323280);
INSERT INTO religion_country VALUES ('Other religion','Argentina', 121230);
INSERT INTO religion_country VALUES ('Jewish','Argentina', 202050);

INSERT INTO religion_country VALUES ('Christian','Peru', 26753600);
INSERT INTO religion_country VALUES ('Muslim','Peru', 0);
INSERT INTO religion_country VALUES ('Irreligion','Peru', 1890200);
INSERT INTO religion_country VALUES ('Hindu','Peru', 0);
INSERT INTO religion_country VALUES ('Buddhist','Peru', 58160);
INSERT INTO religion_country VALUES ('Folk religion','Peru', 290800);
INSERT INTO religion_country VALUES ('Other religion','Peru', 87240);
INSERT INTO religion_country VALUES ('Jewish','Peru', 0);

INSERT INTO religion_country VALUES ('Christian','Venezuela', 25879140);
INSERT INTO religion_country VALUES ('Muslim','Venezuela', 86940);
INSERT INTO religion_country VALUES ('Irreligion','Venezuela', 2898000);
INSERT INTO religion_country VALUES ('Hindu','Venezuela', 0);
INSERT INTO religion_country VALUES ('Buddhist','Venezuela', 0);
INSERT INTO religion_country VALUES ('Folk religion','Venezuela', 57960);
INSERT INTO religion_country VALUES ('Other religion','Venezuela', 20000);
INSERT INTO religion_country VALUES ('Jewish','Venezuela', 0);

INSERT INTO religion_country VALUES ('Christian','Chile', 15296340);
INSERT INTO religion_country VALUES ('Muslim','Chile', 0);
INSERT INTO religion_country VALUES ('Irreligion','Chile', 1471460);
INSERT INTO religion_country VALUES ('Hindu','Chile', 0);
INSERT INTO religion_country VALUES ('Buddhist','Chile', 10000);
INSERT INTO religion_country VALUES ('Folk religion','Chile', 256650);
INSERT INTO religion_country VALUES ('Other religion','Chile', 34220);
INSERT INTO religion_country VALUES ('Jewish','Chile', 17110);

INSERT INTO religion_country VALUES ('Christian','Guatemala', 13699280);
INSERT INTO religion_country VALUES ('Muslim','Guatemala', 0);
INSERT INTO religion_country VALUES ('Irreligion','Guatemala', 589990);
INSERT INTO religion_country VALUES ('Hindu','Guatemala', 0);
INSERT INTO religion_country VALUES ('Buddhist','Guatemala', 0);
INSERT INTO religion_country VALUES ('Folk religion','Guatemala', 86340);
INSERT INTO religion_country VALUES ('Other religion','Guatemala', 10000);
INSERT INTO religion_country VALUES ('Jewish','Guatemala', 0);

INSERT INTO religion_country VALUES ('Christian','Ecuador', 13606860);
INSERT INTO religion_country VALUES ('Muslim','Ecuador', 0);
INSERT INTO religion_country VALUES ('Irreligion','Ecuador', 795300);
INSERT INTO religion_country VALUES ('Hindu','Ecuador', 0);
INSERT INTO religion_country VALUES ('Buddhist','Ecuador', 0);
INSERT INTO religion_country VALUES ('Folk religion','Ecuador', 43380);
INSERT INTO religion_country VALUES ('Other religion','Ecuador', 0);
INSERT INTO religion_country VALUES ('Jewish','Ecuador', 0);

INSERT INTO religion_country VALUES ('Christian','Bolivia', 9324270);
INSERT INTO religion_country VALUES ('Muslim','Bolivia', 0);
INSERT INTO religion_country VALUES ('Irreligion','Bolivia', 407130);
INSERT INTO religion_country VALUES ('Hindu','Bolivia', 0);
INSERT INTO religion_country VALUES ('Buddhist','Bolivia', 0);
INSERT INTO religion_country VALUES ('Folk religion','Bolivia', 89470);
INSERT INTO religion_country VALUES ('Other religion','Bolivia', 99300);
INSERT INTO religion_country VALUES ('Jewish','Bolivia', 0);

INSERT INTO religion_country VALUES ('Christian','Honduras', 6657600);
INSERT INTO religion_country VALUES ('Muslim','Honduras', 7600);
INSERT INTO religion_country VALUES ('Irreligion','Honduras', 798000);
INSERT INTO religion_country VALUES ('Hindu','Honduras', 0);
INSERT INTO religion_country VALUES ('Buddhist','Honduras', 7600);
INSERT INTO religion_country VALUES ('Folk religion','Honduras', 83600);
INSERT INTO religion_country VALUES ('Other religion','Honduras', 45600);
INSERT INTO religion_country VALUES ('Jewish','Honduras', 0);

INSERT INTO religion_country VALUES ('Christian','Paraguay', 6250050);
INSERT INTO religion_country VALUES ('Muslim','Paraguay', 0);
INSERT INTO religion_country VALUES ('Irreligion','Paraguay', 70950);
INSERT INTO religion_country VALUES ('Hindu','Paraguay', 0);
INSERT INTO religion_country VALUES ('Buddhist','Paraguay', 0);
INSERT INTO religion_country VALUES ('Folk religion','Paraguay', 109650);
INSERT INTO religion_country VALUES ('Other religion','Paraguay', 12900);
INSERT INTO religion_country VALUES ('Jewish','Paraguay', 0);

INSERT INTO religion_country VALUES ('Christian','Nicaragua', 4967820);
INSERT INTO religion_country VALUES ('Muslim','Nicaragua', 0);
INSERT INTO religion_country VALUES ('Irreligion','Nicaragua', 723750);
INSERT INTO religion_country VALUES ('Hindu','Nicaragua', 0);
INSERT INTO religion_country VALUES ('Buddhist','Nicaragua', 0);
INSERT INTO religion_country VALUES ('Folk religion','Nicaragua', 81060);
INSERT INTO religion_country VALUES ('Other religion','Nicaragua', 5790);
INSERT INTO religion_country VALUES ('Jewish','Nicaragua', 0);

INSERT INTO religion_country VALUES ('Christian','El Salvador', 5459580);
INSERT INTO religion_country VALUES ('Muslim','El Salvador', 0);
INSERT INTO religion_country VALUES ('Irreligion','El Salvador', 680900);
INSERT INTO religion_country VALUES ('Hindu','El Salvador', 0);
INSERT INTO religion_country VALUES ('Buddhist','El Salvador', 0);
INSERT INTO religion_country VALUES ('Folk religion','El Salvador', 30950);
INSERT INTO religion_country VALUES ('Other religion','El Salvador', 18570);
INSERT INTO religion_country VALUES ('Jewish','El Salvador', 0);

INSERT INTO religion_country VALUES ('Christian','Costa Rica', 4235940);
INSERT INTO religion_country VALUES ('Muslim','Costa Rica', 0);
INSERT INTO religion_country VALUES ('Irreligion','Costa Rica', 368140);
INSERT INTO religion_country VALUES ('Hindu','Costa Rica', 0);
INSERT INTO religion_country VALUES ('Buddhist','Costa Rica', 0);
INSERT INTO religion_country VALUES ('Folk religion','Costa Rica', 38280);
INSERT INTO religion_country VALUES ('Other religion','Costa Rica', 13980);
INSERT INTO religion_country VALUES ('Jewish','Costa Rica', 0);

INSERT INTO religion_country VALUES ('Christian','Panama', 3273600);
INSERT INTO religion_country VALUES ('Muslim','Panama', 24640);
INSERT INTO religion_country VALUES ('Irreligion','Panama', 168960);
INSERT INTO religion_country VALUES ('Hindu','Panama', 0);
INSERT INTO religion_country VALUES ('Buddhist','Panama', 7040);
INSERT INTO religion_country VALUES ('Folk religion','Panama', 14080);
INSERT INTO religion_country VALUES ('Other religion','Panama', 14080);
INSERT INTO religion_country VALUES ('Jewish','Panama', 14080);

INSERT INTO religion_country VALUES ('Christian','Uruguay', 1951230);
INSERT INTO religion_country VALUES ('Muslim','Uruguay', 0);
INSERT INTO religion_country VALUES ('Irreligion','Uruguay', 1371590);
INSERT INTO religion_country VALUES ('Hindu','Uruguay', 0);
INSERT INTO religion_country VALUES ('Buddhist','Uruguay', 0);
INSERT INTO religion_country VALUES ('Folk religion','Uruguay', 26960);
INSERT INTO religion_country VALUES ('Other religion','Uruguay', 10110);
INSERT INTO religion_country VALUES ('Jewish','Uruguay', 10110);

INSERT INTO religion_country VALUES ('Christian','Guyana', 495000);
INSERT INTO religion_country VALUES ('Muslim','Guyana', 48000);
INSERT INTO religion_country VALUES ('Irreligion','Guyana', 15000);
INSERT INTO religion_country VALUES ('Hindu','Guyana', 236750);
INSERT INTO religion_country VALUES ('Buddhist','Guyana', 0);
INSERT INTO religion_country VALUES ('Folk religion','Guyana', 1500);
INSERT INTO religion_country VALUES ('Other religion','Guyana', 4500);
INSERT INTO religion_country VALUES ('Jewish','Guyana', 0);

INSERT INTO religion_country VALUES ('Christian','Suriname', 268320);
INSERT INTO religion_country VALUES ('Muslim','Suriname', 79040);
INSERT INTO religion_country VALUES ('Irreligion','Suriname', 28080);
INSERT INTO religion_country VALUES ('Hindu','Suriname', 102960);
INSERT INTO religion_country VALUES ('Buddhist','Suriname', 3120);
INSERT INTO religion_country VALUES ('Folk religion','Suriname', 27560);
INSERT INTO religion_country VALUES ('Other religion','Suriname', 9360);
INSERT INTO religion_country VALUES ('Jewish','Suriname', 1040);

INSERT INTO religion_country VALUES ('Christian','Belize', 271560);
INSERT INTO religion_country VALUES ('Muslim','Belize', 310);
INSERT INTO religion_country VALUES ('Irreligion','Belize', 27590);
INSERT INTO religion_country VALUES ('Hindu','Belize', 620);
INSERT INTO religion_country VALUES ('Buddhist','Belize', 1550);
INSERT INTO religion_country VALUES ('Folk religion','Belize', 4650);
INSERT INTO religion_country VALUES ('Other religion','Belize', 310);
INSERT INTO religion_country VALUES ('Jewish','Belize', 3100);

/*
INSERT INTO religion () VALUES (17237400, 100000, 973080, 0, 0, 801360, 0, 0); -- Angola
INSERT INTO religion () VALUES (13778800, 7692300, 1038800, 0, 0, 646800, 529270, 0); -- Cameroon
INSERT INTO religion () VALUES (3938000, 862000, 44000, 0, 0, 44000, 0, 0); -- Central African Republic
INSERT INTO religion () VALUES (4559380, 9200000, 280750, 0, 0, 157220, 11230, 0); -- Chad
INSERT INTO religion () VALUES (63199260, 1249200, 1187460, 30000, 0, 461790, 65970, 2500); -- Congo Democratic Republic of the
INSERT INTO religion () VALUES (3470360, 108000, 363600, 0, 0, 113120, 44440, 0); -- Congo Republic of the
INSERT INTO religion () VALUES (620900, 80000, 35000, 0, 0, 11900, 3500, 0); -- Equatorial Guinea
INSERT INTO religion () VALUES (1155150, 169120, 84560, 0, 0, 90600, 10570, 0); -- Gabon
INSERT INTO religion () VALUES (139740, 6000, 21420, 0, 0, 4930, 4080, 0); -- São Tomé and Príncipe
INSERT INTO religion () VALUES (108128990, 11444300, 4028670, 30000, 0, 2331720, 668990, 0); -- Central Africa
INSERT INTO religion () VALUES (7667700, 1184452, 0, 0, 0, 477960, 0, 0); -- Burundi
INSERT INTO religion () VALUES (5000, 725620, 0, 0, 0, 000, 0, 0); -- Comoros
INSERT INTO religion () VALUES (20470, 862410, 1780, 0, 0, 2670, 0, 1780); -- Djibouti
INSERT INTO religion () VALUES (2625000, 2520000, 5250, 0, 0, 21000, 0, 0); -- Eritrea
INSERT INTO religion () VALUES (52092600, 35600000, 50000, 0, 0, 2156700, 0, 25000); -- Ethiopia
INSERT INTO religion () VALUES (34352480, 3929470, 1012750, 40510, 0, 688670, 486120, 0); -- Kenya
INSERT INTO religion () VALUES (17665630, 621300, 1428990, 10000, 0, 931950, 20000, 0); -- Madagascar
INSERT INTO religion () VALUES (12322300, 1937000, 372500, 0, 0, 253300, 0, 0); -- Malawi
INSERT INTO religion () VALUES (328900, 217100, 7800, 733200, 0, 9100, 3900, 0); -- Mauritius
INSERT INTO religion () VALUES (1400, 197200, 400, 0, 0, 1000, 0, 0); -- Mayotte
INSERT INTO religion () VALUES (13262130, 4210200, 4186810, 0, 0, 1730860, 0, 0); -- Mozambique
INSERT INTO religion () VALUES (744600, 35700, 17000, 38250, 1700, 3400, 9350, 0); -- Réunion
INSERT INTO religion () VALUES (9919080, 576040, 382320, 0, 0, 106200, 21240, 0); -- Rwanda
INSERT INTO religion () VALUES (84600, 1038, 1890, 1890, 0, 0, 540, 0); -- Seychelles
INSERT INTO religion () VALUES (100, 9311340, 0, 0, 0, 0, 0, 0); -- Somalia
INSERT INTO religion () VALUES (6019750, 2464692, 49750, 0, 0, 3273550, 0, 0); -- South Sudan
INSERT INTO religion () VALUES (27531760, 15783680, 627760, 44840, 0, 807120, 30000, 0); -- Tanzania
INSERT INTO religion () VALUES (28975140, 3843300, 167100, 100260, 0, 300780, 33420, 0); -- Uganda
INSERT INTO religion () VALUES (12775840, 170000, 65450, 13090, 0, 39270, 117810, 0); -- Zambia
INSERT INTO religion () VALUES (10935900, 120000, 993030, 0, 0, 477660, 37710, 10000); -- Zimbabwe
INSERT INTO religion () VALUES (238006180, 73510760, 9371310, 982040, 1700, 11288190, 760090, 11780); -- Eastern Africa
INSERT INTO religion () VALUES (419570, 43734560, 354700, 0, 0, 10000, 0, 140000); -- Algeria
INSERT INTO religion () VALUES (9486120, 76982880, 0, 0, 0, 0, 0, 1000); -- Egypt
INSERT INTO religion () VALUES (171720, 6143760, 12720, 0, 19080, 0, 0, 0); -- Libya
INSERT INTO religion () VALUES (20000, 31918050, 0, 0, 0, 0, 3200, 2200); -- Morocco
INSERT INTO religion () VALUES (1814400, 30475200, 336000, 0, 0, 940800, 0, 0); -- Sudan
INSERT INTO religion () VALUES (20960, 10427600, 20960, 0, 0, 0, 0, 1100); -- Tunisia
INSERT INTO religion () VALUES (6236200, 191199440, 1010260, 0, 19080, 950800, 0, 0); -- Northern Africa
INSERT INTO religion () VALUES (1449210, 8040, 414060, 6030, 0, 120600, 12060, 0); -- Botswana
INSERT INTO religion () VALUES (1051526, 2400, 120190, 1190, 0, 11900, 4760, 0); -- Eswatini
INSERT INTO religion () VALUES (2105560, 3000, 67270, 0, 0, 2170, 0, 0); -- Lesotho
INSERT INTO religion () VALUES (2223000, 6840, 43320, 0, 0, 4560, 0, 0); -- Namibia
INSERT INTO religion () VALUES (40705560, 1200000, 6136274, 753524, 100260, 200520, 150390, 50130); -- South Africa
INSERT INTO religion () VALUES (47526720, 1220000, 8114210, 760000, 100260, 339750, 167210, 50130); -- Southern Africa
INSERT INTO religion () VALUES (4690500, 3141320, 442500, 0, 0, 1601850, 0, 0); -- Benin
INSERT INTO religion () VALUES (3705750, 12142000, 65880, 0, 0, 2536380, 0, 0); -- Burkina Faso
INSERT INTO religion () VALUES (445500, 800, 45500, 0, 0, 7500, 1000, 0); -- Cape Verde
INSERT INTO religion () VALUES (77850, 1645230, 0, 0, 0, 1730, 0, 0); -- The Gambia
INSERT INTO religion () VALUES (18268110, 5058480, 1024380, 0, 0, 1195110, 48780, 0); -- Ghana
INSERT INTO religion () VALUES (1087820, 8423120, 179640, 0, 0, 269460, 0, 0); -- Guinea
INSERT INTO religion () VALUES (300000, 826800, 65360, 0, 0, 469680, 0, 0); -- Guinea-Bissau
INSERT INTO religion () VALUES (8705340, 11266000, 1579200, 0, 0, 2013480, 39480, 0); -- Ivory Coast
INSERT INTO religion () VALUES (3427410, 962000, 55860, 0, 0, 19950, 3990, 0); -- Liberia
INSERT INTO religion () VALUES (491840, 17508400, 414990, 0, 0, 245920, 0, 0); -- Mali
INSERT INTO religion () VALUES (3000, 4591525, 0, 0, 0, 0, 0, 0); -- Mauritania
INSERT INTO religion () VALUES (124080, 15261840, 108570, 0, 0, 0, 0, 0); -- Niger
INSERT INTO religion () VALUES (80000000, 99200000, 633680, 0, 10000, 2217880, 90000, 0); -- Nigeria
INSERT INTO religion () VALUES (887250, 16325400, 35490, 0, 0, 496860, 0, 0); -- Senegal
INSERT INTO religion () VALUES (1226830, 4578600, 5870, 0, 0, 46960, 0, 0); -- Sierra Leone
INSERT INTO religion () VALUES (3860, 140, 0, 0, 0, 0, 0, 0); -- Saint Helena
INSERT INTO religion () VALUES (2635110, 1562000, 373860, 0, 0, 2146680, 36180, 0); -- Togo
INSERT INTO religion () VALUES (123748360, 162347970, 5034372, 0, 10000, 12789880, 219438, 0); -- Western Africa
INSERT INTO religion () VALUES (18120, 60, 800, 80, 0, 580, 320, 20); -- Anguilla
INSERT INTO religion () VALUES (83700, 540, 1530, 180, 0, 3240, 900, 0); -- Antigua and Barbuda
INSERT INTO religion () VALUES (101090, 220, 6600, 0, 110, 1430, 110, 440); -- Aruba
INSERT INTO religion () VALUES (326400, 340, 10540, 0, 0, 1020, 1020, 0); -- Bahamas
INSERT INTO religion () VALUES (257040, 2700, 5130, 1080, 0, 0, 3780, 0); -- Barbados
INSERT INTO religion () VALUES (50100, 240, 5640, 540, 0, 2700, 360, 480); -- Cayman Islands
INSERT INTO religion () VALUES (6665920, 0, 2589800, 22520, 0, 1959240, 0, 0); -- Cuba
INSERT INTO religion () VALUES (66080, 70, 350, 0, 70, 2100, 1190, 0); -- Dominica
INSERT INTO religion () VALUES (8738400, 0, 1082370, 0, 0, 89370, 9930, 0); -- Dominican Republic
INSERT INTO religion () VALUES (96600, 300, 1000, 700, 0, 1300, 200, 0); -- Grenada
INSERT INTO religion () VALUES (441140, 1840, 11500, 2300, 0, 1840, 1840, 0); -- Guadeloupe
INSERT INTO religion () VALUES (8681310, 0, 1058940, 0, 0, 219780, 29970, 0); -- Haiti
INSERT INTO religion () VALUES (2115280, 0, 471280, 0, 0, 123300, 27400, 0); -- Jamaica
INSERT INTO religion () VALUES (395650, 820, 9430, 820, 0, 820, 2460, 0); -- Martinique
INSERT INTO religion () VALUES (4675, 0, 240, 5, 0, 10, 75, 0); -- Montserrat
INSERT INTO religion () VALUES (187800, 400, 6600, 400, 1000, 2400, 600, 600); -- Netherlands Antilles
INSERT INTO religion () VALUES (3626250, 0, 71250, 0, 11250, 30000, 3750, 0); -- Puerto Rico
INSERT INTO religion () VALUES (47300, 150, 800, 750, 0, 650, 400, 0); -- Saint Kitts and Nevis
INSERT INTO religion () VALUES (154870, 170, 10200, 510, 0, 850, 3400, 0); -- Saint Lucia
INSERT INTO religion () VALUES (97570, 1650, 2750, 3740, 0, 2200, 2200, 0); -- Saint Vincent and the Grenadines
INSERT INTO religion () VALUES (883060, 79060, 25460, 304180, 4020, 25460, 18760, 0); -- Trinidad and Tobago
INSERT INTO religion () VALUES (36840, 0, 1840, 0, 0, 1080, 240, 0); -- Turks and Caicos Islands
INSERT INTO religion () VALUES (16900, 240, 780, 240, 0, 1680, 160, 0); -- British Virgin Islands
INSERT INTO religion () VALUES (104280, 110, 4070, 440, 0, 0, 660, 330); -- U.S. Virgin Islands
INSERT INTO religion () VALUES (271560, 310, 27590, 620, 1550, 4650, 310, 3100); -- Belize
INSERT INTO religion () VALUES (4235940, 0, 368140, 0, 0, 38280, 13980, 0); -- Costa Rica
INSERT INTO religion () VALUES (5459580, 0, 680900, 0, 0, 30950, 18570, 0); -- El Salvador
INSERT INTO religion () VALUES (13699280, 0, 589990, 0, 0, 86340, 10000, 0); -- Guatemala
INSERT INTO religion () VALUES (6657600, 7600, 798000, 0, 7600, 83600, 45600, 0); -- Honduras
INSERT INTO religion () VALUES (4967820, 0, 723750, 0, 0, 81060, 5790, 0); -- Nicaragua
INSERT INTO religion () VALUES (3273600, 24640, 168960, 0, 7040, 14080, 14080, 14080); -- Panama
INSERT INTO religion () VALUES (45000, 660, 11640, 0, 300, 1800, 480, 180); -- Bermuda
INSERT INTO religion () VALUES (24473800, 1199330, 8062740, 476280, 272160, 408240, 306180, 340200); -- Canada
INSERT INTO religion () VALUES (57660, 0, 1500, 0, 0, 480, 360, 0); -- Greenland
INSERT INTO religion () VALUES (107862420, 2000, 5330740, 0, 107000, 70000, 20000, 70000); -- Mexico
INSERT INTO religion () VALUES (5682, 12, 228, 0, 0, 0, 78, 0); -- Saint Pierre and Miquelon
INSERT INTO religion () VALUES (275827540, 2793420, 50902320, 1862280, 3724560, 620760, 1862280, 5586840); -- United States
INSERT INTO religion () VALUES (34429320, 404100, 4930020, 0, 20000, 323280, 121230, 202050); -- Argentina
INSERT INTO religion () VALUES (9324270, 0, 407130, 0, 0, 89470, 99300, 0); -- Bolivia
INSERT INTO religion () VALUES (183310550, 40000, 15401050, 0, 194950, 5458600, 389900, 110000); -- Brazil
INSERT INTO religion () VALUES (15296340, 0, 1471460, 0, 10000, 256650, 34220, 17110); -- Chile
INSERT INTO religion () VALUES (41500000, 100000, 5500140, 50.000, 50.000, 500320, 1.000000, 50.000); -- Colombia
INSERT INTO religion () VALUES (13606860, 0, 795300, 0, 0, 43380, 0, 0); -- Ecuador
INSERT INTO religion () VALUES (2016, 9, 945, 0, 6, 0, 24, 0); -- Falkland Islands
INSERT INTO religion () VALUES (194120, 2070, 7820, 3680, 0, 20930, 1150, 0); -- French Guiana
INSERT INTO religion () VALUES (495000, 48000, 15000, 236750, 0, 1500, 4500, 0); -- Guyana
INSERT INTO religion () VALUES (6250050, 0, 70950, 0, 0, 109650, 12900, 0); -- Paraguay
INSERT INTO religion () VALUES (26753600, 0, 1890200, 0, 58160, 290800, 87240, 0); -- Peru
INSERT INTO religion () VALUES (268320, 79040, 28080, 102960, 3120, 27560, 9360, 1040); -- Suriname
INSERT INTO religion () VALUES (1951230, 0, 1371590, 0, 0, 26960, 10110, 10110); -- Uruguay
INSERT INTO religion () VALUES (25879140, 86940, 2898000, 0, 0, 57960, 20000, 0); -- Venezuela
INSERT INTO religion () VALUES (68408340, 24144120, 700179480, 100000, 244123880, 293753460, 9389380, 0); -- Mainland China
INSERT INTO religion () VALUES (1048150, 126900, 3955050, 35000, 930600, 902400, 105750, 0); -- Hong Kong
INSERT INTO religion () VALUES (38880, 1080, 83160, 200, 93420, 318060, 5400, 0); -- Macau
INSERT INTO religion () VALUES (1277100, 10000, 2948940, 9000, 4945860, 10263240, 3761640, 0); -- Taiwan
INSERT INTO religion () VALUES (2024640, 253080, 72127800, 50000, 45807480, 506160, 5947380, 0); -- Japan
INSERT INTO religion () VALUES (487000, 0, 17361550, 10, 365250, 2995050, 3141150, 0); -- North Korea
INSERT INTO religion () VALUES (14164920, 103773, 22355520, 50000, 11033220, 385440, 96360, 0); -- South Korea
INSERT INTO religion () VALUES (63480, 88320, 990840, 5000, 1520760, 96600, 0, 0); -- Mongolia
INSERT INTO religion () VALUES (37600, 300400, 1600, 2000, 34400, 24800, 400, 0); -- Brunei
INSERT INTO religion () VALUES (56560, 282800, 28280, 10000, 13701660, 84840, 0, 0); -- Cambodia
INSERT INTO religion () VALUES (29008731, 231069932, 8385396, 4677535, 2023719, 122043, 73911, 20); -- Indonesia
INSERT INTO religion () VALUES (93000, 0, 55800, 1000, 4092000, 1903400, 43400, 0); -- Laos
INSERT INTO religion () VALUES (2669600, 18090800, 198800, 1804000, 5026800, 653200, 56800, 0); -- Malaysia
INSERT INTO religion () VALUES (3740880, 1918400, 239800, 1015320, 38415960, 2781680, 95920, 0); -- Myanmar
INSERT INTO religion () VALUES (89000000, 5127000, 105000, 15000, 1758000, 1398900, 93260, 28473); -- Philippines
INSERT INTO religion () VALUES (926380, 727870, 834760, 304680, 1725510, 117070, 493730, 0); -- Singapore
INSERT INTO religion () VALUES (622080, 3801600, 207360, 100120, 64419840, 60000, 0, 0); -- Thailand
INSERT INTO religion () VALUES (1115520, 1120, 0, 0, 0, 1120, 0, 0); -- Timor-Leste
INSERT INTO religion () VALUES (7765400, 175700, 28031200, 201200, 15530800, 42899100, 351400, 0); -- Vietnam
INSERT INTO religion () VALUES (31410, 31315770, 0, 60000, 0, 0, 20000, 0); -- Afghanistan
INSERT INTO religion () VALUES (297380, 147624300, 80000, 16752870, 743450, 594760, 30000, 0); -- Bangladesh
INSERT INTO religion () VALUES (0, 0, 0, 170980, 545310, 13870, 0, 0); -- Bhutan
INSERT INTO religion () VALUES (27615250, 204546110, 1870000, 1076914950, 9996880, 6123050, 28166030, 10000); -- India
INSERT INTO religion () VALUES (1280, 314880, 0, 9600, 1920, 0, 0, 0); -- Maldives
INSERT INTO religion () VALUES (149800, 1419560, 89880, 26138420, 3085880, 1108520, 20000, 0); -- Nepal
INSERT INTO religion () VALUES (2637586, 203648170, 20000, 4444437, 20000, 30000, 20000, 0); -- Pakistan
INSERT INTO religion () VALUES (1522780, 2044280, 0, 2836960, 14455980, 0, 0, 0); -- Sri Lanka
INSERT INTO religion () VALUES (3975440, 11285120, 673260, 5000, 32060, 48090, 16030, 0); -- Kazakhstan
INSERT INTO religion () VALUES (607620, 4690400, 21320, 1000, 0, 5330, 0, 0); -- Kyrgyzstan
INSERT INTO religion () VALUES (110080, 6652960, 103200, 9000, 0, 0, 0, 0); -- Tajikistan
INSERT INTO religion () VALUES (322560, 4687200, 25200, 6000, 0, 0, 0, 0); -- Turkmenistan
INSERT INTO religion () VALUES (631120, 26534480, 219520, 16000, 1000, 1000, 0, 1000); -- Uzbekistan
INSERT INTO religion () VALUES (3043650, 0, 40170, 0, 0, 0, 3090, 0); -- Armenia
INSERT INTO religion () VALUES (275700, 8905110, 0, 0, 0, 0, 0, 0); -- Azerbaijan
INSERT INTO religion () VALUES (182700, 885780, 23940, 123480, 31500, 0, 2520, 7560); -- Bahrain
INSERT INTO religion () VALUES (805200, 278300, 13200, 0, 2200, 0, 0, 0); -- Cyprus
INSERT INTO religion () VALUES (340000, 82025000, 1275000, 0, 0, 0, 1360000, 0); -- Iran
INSERT INTO religion () VALUES (253360, 31353300, 31670, 0, 0, 0, 20000, 0); -- Iraq
INSERT INTO religion () VALUES (148400, 1380120, 230020, 0, 22260, 14840, 7420, 5609520); -- Israel
INSERT INTO religion () VALUES (136180, 6016680, 0, 6190, 24760, 0, 0, 0); -- Jordan
INSERT INTO religion () VALUES (391820, 2030340, 0, 232900, 76720, 0, 8220, 0); -- Kuwait
INSERT INTO religion () VALUES (2170090, 2592990, 12690, 0, 8460, 0, 0, 0); -- Lebanon
INSERT INTO religion () VALUES (180700, 2388020, 5560, 152900, 22240, 0, 27800, 0); -- Oman
INSERT INTO religion () VALUES (96960, 3943040, 0, 0, 0, 0, 0, 0); -- Palestine
INSERT INTO religion () VALUES (242880, 1152800, 15840, 242880, 54560, 0, 12320, 0); -- Qatar
INSERT INTO religion () VALUES (1207800, 25528500, 192150, 301950, 82350, 82350, 82350, 0); -- Saudi Arabia
INSERT INTO religion () VALUES (1061320, 18940480, 408200, 0, 0, 0, 0, 0); -- Syria
INSERT INTO religion () VALUES (291000, 71295000, 873000, 0, 40000, 20000, 145500, 20000); -- Turkey
INSERT INTO religion () VALUES (946260, 5775190, 82610, 495660, 150200, 0, 60080, 0); -- United Arab Emirates
INSERT INTO religion () VALUES (48100, 23833550, 24050, 144300, 0, 0, 0, 0); -- Yemen
INSERT INTO religion () VALUES (6745560, 453060, 1132650, 0, 16780, 0, 8390, 16780); -- Austria
INSERT INTO religion () VALUES (4109600, 61600, 224400, 0, 0, 0, 0, 0); -- Croatia
INSERT INTO religion () VALUES (2444170, 0, 8014360, 0, 0, 0, 0, 0); -- Czech Republic
INSERT INTO religion () VALUES (56540100, 4773400, 20328100, 0, 246900, 0, 82300, 246900); -- Germany
INSERT INTO religion () VALUES (8083800, 0, 1856280, 0, 0, 0, 0, 9980); -- Hungary
INSERT INTO religion () VALUES (36760, 2000, 1160, 0, 0, 0, 0, 40); -- Liechtenstein
INSERT INTO religion () VALUES (36098040, 0, 2143680, 0, 0, 0, 0, 0); -- Poland
INSERT INTO religion () VALUES (21382550, 64470, 21490, 0, 0, 0, 0, 0); -- Romania
INSERT INTO religion () VALUES (4657380, 10920, 780780, 0, 0, 0, 0, 0); -- Slovakia
INSERT INTO religion () VALUES (1591520, 73080, 365400, 0, 0, 0, 0, 0); -- Slovenia
INSERT INTO religion () VALUES (6227580, 421300, 911540, 30640, 30640, 0, 7660, 22980); -- Switzerland
INSERT INTO religion () VALUES (6835200, 19200, 2745600, 0, 0, 0, 0, 0); -- Belarus
INSERT INTO religion () VALUES (3849750, 465450, 30450, 0, 0, 0, 0, 0); -- Georgia
INSERT INTO religion () VALUES (104789680, 14296000, 23159520, 0, 142960, 285920, 0, 285920); -- Russia
INSERT INTO religion () VALUES (38087100, 545400, 6681150, 0, 0, 0, 0, 45450); -- Ukraine
INSERT INTO religion () VALUES (4634250, 227550, 654900, 22200, 11100, 0, 0, 0); -- Denmark
INSERT INTO religion () VALUES (49000, 0, 850, 0, 0, 0, 150, 0); -- Faroe Islands
INSERT INTO religion () VALUES (534660, 2680, 798640, 0, 0, 10, 0, 1 340); -- Estonia
INSERT INTO religion () VALUES (4373760, 42880, 943360, 0, 0, 0, 0, 0); -- Finland
INSERT INTO religion () VALUES (304000, 640, 11200, 960, 1280, 1600, 640, 0); -- Iceland
INSERT INTO religion () VALUES (1255500, 2500, 985500, 0, 0, 0, 4500, 0); -- Latvia
INSERT INTO religion () VALUES (2981360, 5000, 332000, 0, 0, 0, 0, 0); -- Lithuania
INSERT INTO religion () VALUES (4133360, 180560, 492880, 24400, 29280, 0, 9760, 0); -- Norway
INSERT INTO religion () VALUES (7303360, 431480, 2532600, 18760, 37520, 18760, 18760, 9380); -- Sweden
INSERT INTO religion () VALUES (576000, 2569600, 44800, 0, 0, 0, 6400, 0); -- Albania
INSERT INTO religion () VALUES (1755574, 1939164, 94000, 0, 0, 0, 0, 0); -- Bosnia and Herzegovina
INSERT INTO religion () VALUES (6149290, 1026130, 314580, 0, 0, 0, 0, 0); -- Bulgaria
INSERT INTO religion () VALUES (10008160, 602080, 692960, 11360, 0, 11360, 0, 0); -- Greece
INSERT INTO religion () VALUES (237120, 1809600, 33280, 0, 0, 0, 0, 0); -- Kosovo
INSERT INTO religion () VALUES (3477180, 21420, 49980, 0, 0, 0, 0, 21420); -- Moldova
INSERT INTO religion () VALUES (492030, 117810, 20160, 0, 0, 0, 0, 0); -- Montenegro
INSERT INTO religion () VALUES (1221580, 809580, 28840, 0, 0, 0, 0, 0); -- North Macedonia
INSERT INTO religion () VALUES (7187250, 326340, 256410, 0, 0, 0, 0, 0); -- Serbia
INSERT INTO religion () VALUES (71600, 640, 7040, 400, 0, 0, 80, 240); -- Andorra
INSERT INTO religion () VALUES (26640, 1200, 870, 540, 0, 0, 90, 630); -- Gibraltar
INSERT INTO religion () VALUES (50438150, 2240350, 7508200, 60550, 121100, 60550, 60000, 50000); -- Italy
INSERT INTO religion () VALUES (407400, 840, 10500, 840, 0, 0, 0, 0); -- Malta
INSERT INTO religion () VALUES (10017840, 64080, 469920, 10680, 64080, 53400, 0, 0); -- Portugal
INSERT INTO religion () VALUES (27480, 0, 2160, 0, 0, 0, 270, 90); -- San Marino
INSERT INTO religion () VALUES (36218880, 967680, 8755200, 20000, 0, 20000, 10000, 46080); -- Spain
INSERT INTO religion () VALUES (800, 0, 0, 0, 0, 0, 0, 0); -- Vatican City
INSERT INTO religion () VALUES (6875820, 631890, 3105900, 0, 21420, 21420, 0, 32130); -- Belgium
INSERT INTO religion () VALUES (50557700, 4709250, 17581200, 30000, 313950, 188370, 125580, 313950); -- France
INSERT INTO religion () VALUES (4112400, 49170, 277140, 8940, 8940, 8940, 0, 0); -- Ireland
INSERT INTO religion () VALUES (67280, 160, 12320, 160, 0, 0, 0, 0); -- Isle of Man
INSERT INTO religion () VALUES (359040, 11730, 136680, 0, 0, 0, 1530, 510); -- Luxembourg
INSERT INTO religion () VALUES (34400, 160, 4680, 0, 0, 0, 80, 680); -- Monaco
INSERT INTO religion () VALUES (8404660, 996600, 6992810, 85905, 34362, 34362, 34362, 34362); -- Netherlands
INSERT INTO religion () VALUES (44110440, 2729760, 13214520, 806520, 248160, 186120, 496320, 310200); -- United Kingdom
INSERT INTO religion () VALUES (558221460, 43459510, 134783940, 1250000, 1347330, 929660, 876180, 1457920); -- Europe
INSERT INTO religion () VALUES (11148800, 813392, 9887000, 684002, 615800, 325400, 178160, 100350); -- Australia
INSERT INTO religion () VALUES (1738638, 61455, 2278185, 123504, 52779, 19011, 153873, 5274); -- New Zealand
INSERT INTO religion () VALUES (553840, 58400, 6880, 239941, 0, 0, 4300, 0); -- Fiji
INSERT INTO religion () VALUES (213000, 7000, 26000, 0, 1500, 500, 2000, 0); -- New Caledonia
INSERT INTO religion () VALUES (6805120, 2020, 0, 0, 0, 27440, 13720, 0); -- Papua New Guinea
INSERT INTO religion () VALUES (525960, 200, 1080, 0, 1620, 7020, 3780, 0); -- Solomon Islands
INSERT INTO religion () VALUES (223920, 1000, 2880, 0, 0, 9840, 3360, 0); -- Vanuatu
INSERT INTO religion () VALUES (169560, 300, 3060, 0, 1980, 2700, 2880, 0); -- Guam
INSERT INTO religion () VALUES (97000, 500, 800, 0, 0, 0, 2200, 0); -- Kiribati
INSERT INTO religion () VALUES (48750, 180, 750, 0, 0, 100, 400, 0); -- Marshall Islands
INSERT INTO religion () VALUES (104830, 208, 990, 0, 440, 2975, 770, 0); -- Micronesia
INSERT INTO religion () VALUES (7900, 20, 450, 0, 110, 810, 740, 0); -- Nauru
INSERT INTO religion () VALUES (48780, 420, 600, 0, 6360, 3180, 660, 0); -- Northern Mariana Islands
INSERT INTO religion () VALUES (17340, 240, 240, 0, 160, 160, 2080, 0); -- Palau
INSERT INTO religion () VALUES (68860, 50, 490, 0, 210, 280, 210, 0); -- American Samoa
INSERT INTO religion () VALUES (19200, 0, 640, 0, 0, 0, 160, 0); -- Cook Islands
INSERT INTO religion () VALUES (253800, 688, 13230, 0, 0, 1350, 1080, 0); -- French Polynesia
INSERT INTO religion () VALUES (1928, 50, 66, 0, 0, 0, 4, 0); -- Niue
INSERT INTO religion () VALUES (174240, 300, 4500, 0, 0, 0, 720, 0); -- Samoa
INSERT INTO religion () VALUES (1397, 0, 0, 0, 0, 0, 3, 0); -- Tokelau
INSERT INTO religion () VALUES (99000, 120, 0, 100, 0, 0, 900, 0); -- Tonga
INSERT INTO religion () VALUES (10800, 200, 0, 0, 0, 0, 0, 0); -- Tuvalu
INSERT INTO religion () VALUES (12662, 0, 78, 0, 0, 156, 104, 0); -- Wallis and Futuna

-- gdp

-- TODO: só america latina
-- TODO: colocar em country
INSERT INTO gdp () VALUES ('Afghanistan', 20136);
INSERT INTO gdp () VALUES ('Albania', 18256);
INSERT INTO gdp () VALUES ('Algeria', 187155);
INSERT INTO gdp () VALUES ('American Samoa', NULL);
INSERT INTO gdp () VALUES ('Andorra', 3302);
INSERT INTO gdp () VALUES ('Angola', 124794);
INSERT INTO gdp () VALUES ('Anguilla', NULL);
INSERT INTO gdp () VALUES ('Antigua and Barbuda', 1692);
INSERT INTO gdp () VALUES ('Argentina', 630698);
INSERT INTO gdp () VALUES ('Armenia', 17693);
INSERT INTO gdp () VALUES ('Aruba', 3499);
INSERT INTO gdp () VALUES ('Australia', 1724787);
INSERT INTO gdp () VALUES ('Austria', 468046);
INSERT INTO gdp () VALUES ('Azerbaijan', 70066);
INSERT INTO gdp () VALUES ('Bahamas', 12693);
INSERT INTO gdp () VALUES ('Bahrain', 43544);
INSERT INTO gdp () VALUES ('Bangladesh', 460751);
INSERT INTO gdp () VALUES ('Barbados', 5788);
INSERT INTO gdp () VALUES ('Belarus', 79704);
INSERT INTO gdp () VALUES ('Belgium', 589491);
INSERT INTO gdp () VALUES ('Belize', 2676);
INSERT INTO gdp () VALUES ('Benin', 17547);
INSERT INTO gdp () VALUES ('Bermuda', NULL);
INSERT INTO gdp () VALUES ('Bhutan', 2707);
INSERT INTO gdp () VALUES ('Bolivia', 43431);
INSERT INTO gdp () VALUES ('Bosnia and Herzegovina', 23681);
INSERT INTO gdp () VALUES ('Botswana', 18005);
INSERT INTO gdp () VALUES ('Brazil', 1894708);
INSERT INTO gdp () VALUES ('British Virgin Islands', NULL);
INSERT INTO gdp () VALUES ('Brunei', 18464);
INSERT INTO gdp () VALUES ('Bulgaria', 85008);
INSERT INTO gdp () VALUES ('Burkina Faso', 18268);
INSERT INTO gdp () VALUES ('Burundi', 3686);
INSERT INTO gdp () VALUES ('Cambodia', 28330);
INSERT INTO gdp () VALUES ('Cameroon', 44212);
INSERT INTO gdp () VALUES ('Canada', 2200352);
INSERT INTO gdp () VALUES ('Cape Verde', 2053);
INSERT INTO gdp () VALUES ('Cayman Islands', NULL);
INSERT INTO gdp () VALUES ('Central African Republic', 2488);
INSERT INTO gdp () VALUES ('Chad', 12945);
INSERT INTO gdp () VALUES ('Chile', 310866);
INSERT INTO gdp () VALUES ('China', 18321197);
INSERT INTO gdp () VALUES ('Colombia', 342919);
INSERT INTO gdp () VALUES ('Comoros', 1242);
INSERT INTO gdp () VALUES ('Congo', 14486);
INSERT INTO gdp () VALUES ('Cook Islands', NULL);
INSERT INTO gdp () VALUES ('Costa Rica', 68489);
INSERT INTO gdp () VALUES ('Croatia', 69380);
INSERT INTO gdp () VALUES ('Cuba', NULL);
INSERT INTO gdp () VALUES ('Curaçao', NULL);
INSERT INTO gdp () VALUES ('Cyprus', 26705);
INSERT INTO gdp () VALUES ('Czech Republic', 295618);
INSERT INTO gdp () VALUES ('DR Congo', 63909);
INSERT INTO gdp () VALUES ('Denmark', 386724);
INSERT INTO gdp () VALUES ('Djibouti', 3725);
INSERT INTO gdp () VALUES ('Dominica', 599);
INSERT INTO gdp () VALUES ('Dominican Republic', 112417);
INSERT INTO gdp () VALUES ('East Timor', 2455);
INSERT INTO gdp () VALUES ('Ecuador', 115469);
INSERT INTO gdp () VALUES ('Egypt', 469094);
INSERT INTO gdp () VALUES ('El Salvador', 31989);
INSERT INTO gdp () VALUES ('Equatorial Guinea', 16877);
INSERT INTO gdp () VALUES ('Eritrea', 2369);
INSERT INTO gdp () VALUES ('Estonia', 39054);
INSERT INTO gdp () VALUES ('Eswatini', 4669);
INSERT INTO gdp () VALUES ('Ethiopia', 111181);
INSERT INTO gdp () VALUES ('Fiji', 4859);
INSERT INTO gdp () VALUES ('Finland', 281411);
INSERT INTO gdp () VALUES ('France', 2778090);
INSERT INTO gdp () VALUES ('French Polynesia', NULL);
INSERT INTO gdp () VALUES ('Gabon', 22221);
INSERT INTO gdp () VALUES ('Gambia', 2172);
INSERT INTO gdp () VALUES ('Georgia', 25172);
INSERT INTO gdp () VALUES ('Germany', 4031149);
INSERT INTO gdp () VALUES ('Ghana', 75996);
INSERT INTO gdp () VALUES ('Greece', 222008);
INSERT INTO gdp () VALUES ('Greenland', NULL);
INSERT INTO gdp () VALUES ('Grenada', 1192);
INSERT INTO gdp () VALUES ('Guam', NULL);
INSERT INTO gdp () VALUES ('Guatemala', 91318);
INSERT INTO gdp () VALUES ('Guinea', 19745);
INSERT INTO gdp () VALUES ('Guinea-Bissau', 1624);
INSERT INTO gdp () VALUES ('Guyana', 14839);
INSERT INTO gdp () VALUES ('Haiti', 20182);
INSERT INTO gdp () VALUES ('Honduras', 30568);
INSERT INTO gdp () VALUES ('Hong Kong', 368373);
INSERT INTO gdp () VALUES ('Hungary', 184651);
INSERT INTO gdp () VALUES ('Iceland', 27702);
INSERT INTO gdp () VALUES ('India', 3468566);
INSERT INTO gdp () VALUES ('Indonesia', 1289429);
INSERT INTO gdp () VALUES ('Iran', 1973738);
INSERT INTO gdp () VALUES ('Iraq', 282876);
INSERT INTO gdp () VALUES ('Ireland', 519776);
INSERT INTO gdp () VALUES ('Israel', 527179);
INSERT INTO gdp () VALUES ('Italy', 1996934);
INSERT INTO gdp () VALUES ('Ivory Coast', 68630);
INSERT INTO gdp () VALUES ('Jamaica', 16104);
INSERT INTO gdp () VALUES ('Japan', 4300621);
INSERT INTO gdp () VALUES ('Jordan', 48066);
INSERT INTO gdp () VALUES ('Kazakhstan', 224338);
INSERT INTO gdp () VALUES ('Kenya', 114858);
INSERT INTO gdp () VALUES ('Kiribati', 207);
INSERT INTO gdp () VALUES ('Kosovo', 9242);
INSERT INTO gdp () VALUES ('Kuwait', 183568);
INSERT INTO gdp () VALUES ('Kyrgyzstan', 9750);
INSERT INTO gdp () VALUES ('Laos', 16250);
INSERT INTO gdp () VALUES ('Latvia', 40588);
INSERT INTO gdp () VALUES ('Lebanon', 24494);
INSERT INTO gdp () VALUES ('Lesotho', 2507);
INSERT INTO gdp () VALUES ('Liberia', 3900);
INSERT INTO gdp () VALUES ('Libya', 40836);
INSERT INTO gdp () VALUES ('Liechtenstein', NULL);
INSERT INTO gdp () VALUES ('Lithuania', 68031);
INSERT INTO gdp () VALUES ('Luxembourg', 82154);
INSERT INTO gdp () VALUES ('Macau', 23420);
INSERT INTO gdp () VALUES ('Madagascar', 15106);
INSERT INTO gdp () VALUES ('Malawi', 11554);
INSERT INTO gdp () VALUES ('Malaysia', 434059);
INSERT INTO gdp () VALUES ('Maldives', 5900);
INSERT INTO gdp () VALUES ('Mali', 18434);
INSERT INTO gdp () VALUES ('Malta', 17156);
INSERT INTO gdp () VALUES ('Marshall Islands', 271);
INSERT INTO gdp () VALUES ('Mauritania', 10091);
INSERT INTO gdp () VALUES ('Mauritius', 11497);
INSERT INTO gdp () VALUES ('Mexico', 1424533);
INSERT INTO gdp () VALUES ('Micronesia', 428);
INSERT INTO gdp () VALUES ('Moldova', 14048);
INSERT INTO gdp () VALUES ('Monaco', NULL);
INSERT INTO gdp () VALUES ('Mongolia', 15720);
INSERT INTO gdp () VALUES ('Montenegro', 6127);
INSERT INTO gdp () VALUES ('Montserrat', NULL);
INSERT INTO gdp () VALUES ('Morocco', 142874);
INSERT INTO gdp () VALUES ('Mozambique', 17873);
INSERT INTO gdp () VALUES ('Myanmar', 59530);
INSERT INTO gdp () VALUES ('Namibia', 12488);
INSERT INTO gdp () VALUES ('Nauru', 134);
INSERT INTO gdp () VALUES ('Nepal', 39028);
INSERT INTO gdp () VALUES ('Netherlands', 990583);
INSERT INTO gdp () VALUES ('New Caledonia', NULL);
INSERT INTO gdp () VALUES ('New Zealand', 242700);
INSERT INTO gdp () VALUES ('Nicaragua', 15695);
INSERT INTO gdp () VALUES ('Niger', 14639);
INSERT INTO gdp () VALUES ('Nigeria', 504203);
INSERT INTO gdp () VALUES ('North Korea', NULL);
INSERT INTO gdp () VALUES ('North Macedonia', 14101);
INSERT INTO gdp () VALUES ('Northern Mariana Islands', NULL);
INSERT INTO gdp () VALUES ('Norway', 504703);
INSERT INTO gdp () VALUES ('Oman', 108969);
INSERT INTO gdp () VALUES ('Pakistan', 376493);
INSERT INTO gdp () VALUES ('Palau', 226);
INSERT INTO gdp () VALUES ('Palestine', 19698);
INSERT INTO gdp () VALUES ('Panama', 71085);
INSERT INTO gdp () VALUES ('Papua New Guinea', 31362);
INSERT INTO gdp () VALUES ('Paraguay', 41855);
INSERT INTO gdp () VALUES ('Peru', 239333);
INSERT INTO gdp () VALUES ('Philippines', 401662);
INSERT INTO gdp () VALUES ('Poland', 716305);
INSERT INTO gdp () VALUES ('Portugal', 255854);
INSERT INTO gdp () VALUES ('Puerto Rico', 118677);
INSERT INTO gdp () VALUES ('Qatar', 221369);
INSERT INTO gdp () VALUES ('Romania', 299885);
INSERT INTO gdp () VALUES ('Russia', 2133092);
INSERT INTO gdp () VALUES ('Rwanda', 12098);
INSERT INTO gdp () VALUES ('Saint Kitts and Nevis', 1115);
INSERT INTO gdp () VALUES ('Saint Lucia', 1972);
INSERT INTO gdp () VALUES ('Saint Vincent and the Grenadines', 948);
INSERT INTO gdp () VALUES ('Samoa', 830);
INSERT INTO gdp () VALUES ('San Marino', 1623);
INSERT INTO gdp () VALUES ('Saudi Arabia', 1010588);
INSERT INTO gdp () VALUES ('Senegal', 27542);
INSERT INTO gdp () VALUES ('Serbia', 62721);
INSERT INTO gdp () VALUES ('Seychelles', 2005);
INSERT INTO gdp () VALUES ('Sierra Leone', 4101);
INSERT INTO gdp () VALUES ('Singapore', 423632);
INSERT INTO gdp () VALUES ('Sint Maarten', NULL);
INSERT INTO gdp () VALUES ('Slovakia', 112418);
INSERT INTO gdp () VALUES ('Slovenia', 62191);
INSERT INTO gdp () VALUES ('Solomon Islands', 1601);
INSERT INTO gdp () VALUES ('Somalia', 8416);
INSERT INTO gdp () VALUES ('South Africa', 411480);
INSERT INTO gdp () VALUES ('South Korea', 1734207);
INSERT INTO gdp () VALUES ('South Sudan', 4784);
INSERT INTO gdp () VALUES ('Spain', 1389927);
INSERT INTO gdp () VALUES ('Sri Lanka', 73739);
INSERT INTO gdp () VALUES ('Sudan', 42762);
INSERT INTO gdp () VALUES ('Suriname', 3011);
INSERT INTO gdp () VALUES ('Sweden', 603922);
INSERT INTO gdp () VALUES ('Switzerland', 807418);
INSERT INTO gdp () VALUES ('Syria', NULL);
INSERT INTO gdp () VALUES ('São Tomé and Príncipe', 506);
INSERT INTO gdp () VALUES ('Taiwan', 828659);
INSERT INTO gdp () VALUES ('Tajikistan', 9983);
INSERT INTO gdp () VALUES ('Tanzania', 76582);
INSERT INTO gdp () VALUES ('Thailand', 534758);
INSERT INTO gdp () VALUES ('Togo', 8359);
INSERT INTO gdp () VALUES ('Tonga', 501);
INSERT INTO gdp () VALUES ('Trinidad and Tobago', 29337);
INSERT INTO gdp () VALUES ('Tunisia', 46282);
INSERT INTO gdp () VALUES ('Turkey', 853487);
INSERT INTO gdp () VALUES ('Turkmenistan', 74439);
INSERT INTO gdp () VALUES ('Turks and Caicos Islands', NULL);
INSERT INTO gdp () VALUES ('Tuvalu', 64);
INSERT INTO gdp () VALUES ('Uganda', 48352);
INSERT INTO gdp () VALUES ('Ukraine', 199719);
INSERT INTO gdp () VALUES ('United Arab Emirates', 503913);
INSERT INTO gdp () VALUES ('United Kingdom', 3198470);
INSERT INTO gdp () VALUES ('United States', 25035164);
INSERT INTO gdp () VALUES ('Uruguay', 71161);
INSERT INTO gdp () VALUES ('Uzbekistan', 79117);
INSERT INTO gdp () VALUES ('Vanuatu', 984);
INSERT INTO gdp () VALUES ('Venezuela', 82145);
INSERT INTO gdp () VALUES ('Vietnam', 413808);
INSERT INTO gdp () VALUES ('Yemen', 27594);
INSERT INTO gdp () VALUES ('Zambia', 27025);
INSERT INTO gdp () VALUES ('Zanzibar', NULL);
INSERT INTO gdp () VALUES ('Zimbabwe', 38280);
*/
