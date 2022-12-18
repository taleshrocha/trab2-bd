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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Ibrahim Traoré', 'Interim President'); -- Burkina Faso
INSERT INTO head_of_state (name, goverment_type) VALUES ('Évariste Ndayishimiye', 'President'); -- Burundi
INSERT INTO head_of_state (name, goverment_type) VALUES ('Norodom Sihamoni', 'King'); -- Cambodia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Paul Biya', 'President'); -- Cameroon
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mary Simon', 'Governor General'); -- Canada
INSERT INTO head_of_state (name, goverment_type) VALUES ('José Maria Neves', 'President'); -- Cape Verde
INSERT INTO head_of_state (name, goverment_type) VALUES ('Faustin-Archange Touadéra', 'President'); -- Central African Republic
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mahamat Déby', 'Transitional President'); -- Chad
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gabriel Boric', 'President'); -- Chile
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xi Jinping', 'General Secretary of the Communist Party'); -- China
INSERT INTO head_of_state (name, goverment_type) VALUES ('Xi Jinping', 'President'); -- China
INSERT INTO head_of_state (name, goverment_type) VALUES ('Gustavo Petro', 'President'); -- Colombia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Azali Assoumani', 'President'); -- Comoros
INSERT INTO head_of_state (name, goverment_type) VALUES ('Félix Tshisekedi', 'President'); -- Congo, Democratic Republic of the
INSERT INTO head_of_state (name, goverment_type) VALUES ('Denis Sassou Nguesso', 'President'); -- Congo, Republic of the
INSERT INTO head_of_state (name, goverment_type) VALUES ('Sir Tom Marsters', 'King''s Representative'); -- Cook Islands
INSERT INTO head_of_state (name, goverment_type) VALUES ('Rodrigo Chaves Robles', 'President'); -- Costa Rica
INSERT INTO head_of_state (name, goverment_type) VALUES ('Zoran Milanović', 'President'); -- Croatia
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miguel Díaz-Canel', 'First Secretary of the Communist Party'); -- Cuba
INSERT INTO head_of_state (name, goverment_type) VALUES ('Miguel Díaz-Canel', 'President'); -- Cuba
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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Isaias Afwerki', 'President'); -- Eritrea
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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Mamady Doumbouya', 'Interim President'); -- Guinea
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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Thongloun Sisoulith', 'President'); -- Laos
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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Dame Cindy Kiro', 'King''s Representative'); -- Niue
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kim Jong-un', 'General Secretary of the Workers'' Party of Korea'); -- North Korea
INSERT INTO head_of_state (name, goverment_type) VALUES ('Kim Jong-un', 'President of the State Affairs Commission'); -- North Korea
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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Brahim Ghali', 'General Secretary of the Polisario Front'); -- Sahrawi Republic
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
INSERT INTO head_of_state (name, goverment_type) VALUES ('Bashar al-Assad', 'President'); -- Syria
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

-- currency

INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Russian rouble', '₽', 'RUB', 'Kopeck', 100); -- Abkhazia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Afghan afghani', 'Af or Afs (pl.)', 'AFN', 'Pul', 100); -- Afghanistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Akrotiri and Dhekelia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Albanian lek', 'Lek', 'ALL', 'Qintar', 100); -- Albania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Alderney
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Algerian dinar', 'DA', 'DZD', 'Santeem', 100); -- Algeria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Andorra
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Angolan kwanza', 'Kz', 'AOA', 'Cêntimo', 100); -- Angola
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Anguilla
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Antigua and Barbuda
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Argentine peso', '$', 'ARS', 'Centavo', 100); -- Argentina
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Armenian dram', '֏', 'AMD', 'Luma', 100); -- Armenia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Armenian dram', '֏', 'AMD', 'Luma', 100); -- Artsakh
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Artsakh dram', 'դր.', NULL, 'Luma', 100); -- Artsakh
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Aruban florin', 'ƒ', 'AWG', 'Cent', 100); -- Aruba
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Saint Helena pound', '£', 'SHP', 'Penny', 100); -- Ascension Island
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Australia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Austria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Azerbaijani manat', '₼', 'AZN', 'Qəpik', 100); -- Azerbaijan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bahamian dollar', '$', 'BSD', 'Cent', 100); -- Bahamas, The
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bahraini dinar', 'BD', 'BHD', 'Fils', 1000); -- Bahrain
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bangladeshi taka', '৳', 'BDT', 'Poisha', 100); -- Bangladesh
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Barbadian dollar', '$', 'BBD', 'Cent', 100); -- Barbados
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Belarusian rubel', 'Rbl or Rbls (pl.)', 'BYN', 'Copeck', 100); -- Belarus
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Belgium
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
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- British Indian Ocean Territory
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- British Virgin Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Brunei dollar', '$', 'BND', 'Sen', 100); -- Brunei
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Singapore dollar', '$', 'SGD', 'Cent', 100); -- Brunei
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bulgarian lev', 'Lev', 'BGN', 'Stotinka', 100); -- Bulgaria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Burkina Faso
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Burundian franc', 'Fr', 'BIF', 'Centime', 100); -- Burundi
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cambodian riel', 'CR', 'KHR', 'Sen', 100); -- Cambodia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Cameroon
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Canadian dollar', '$', 'CAD', 'Cent', 100); -- Canada
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cape Verdean escudo', '$', 'CVE', 'Centavo', 100); -- Cape Verde
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cayman Islands dollar', '$', 'KYD', 'Cent', 100); -- Cayman Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bitcoin (as legal tender)', '₿', NULL, 'Satoshi', 100000000); -- Central African Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Central African Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Chad
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Chilean peso', '$', 'CLP', 'Centavo', 100); -- Chile
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Republic of', 'Renminbi', '¥', 'CNY', 'Jiao', 10); -- China, People
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Colombian peso', '$', 'COP', 'Centavo', 100); -- Colombia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Comorian franc', 'Fr', 'KMF', 'Centime', 100); -- Comoros
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Congolese franc', 'Fr', 'CDF', 'Centime', 100); -- Congo, Democratic Republic of the
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Congo, Republic of the
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cook Islands dollar', '$', NULL, 'Cent', 100); -- Cook Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- Cook Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Costa Rican colón', '₡', 'CRC', 'Céntimo', 100); -- Costa Rica
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Croatian kuna', 'kn', 'HRK', 'Lipa', 100); -- Croatia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Cuban peso', '$', 'CUP', 'Centavo', 100); -- Cuba
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Netherlands Antillean guilder', 'ƒ', 'ANG', 'Cent', 100); -- Curaçao
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Cyprus
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Czech koruna', 'Kč', 'CZK', 'Heller', 100); -- Czech Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Côte d voire
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Danish krone', 'kr', 'DKK', 'Øre', 100); -- Denmark
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Djiboutian franc', 'Fr', 'DJF', 'Centime', 100); -- Djibouti
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Dominica
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Dominican peso', '$', 'DOP', 'Centavo', 100); -- Dominican Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Centavo', 100); -- East Timor
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Centavo', 100); -- Ecuador
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Egyptian pound', 'LE', 'EGP', 'Piastre', 100); -- Egypt
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Bitcoin (as legal tender)', '₿', NULL, 'Satoshi', 100000000); -- El Salvador
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- El Salvador
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Equatorial Guinea
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eritrean nakfa', 'Nkf', 'ERN', 'Cent', 100); -- Eritrea
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Estonia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- Eswatini
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swazi lilangeni', 'L or E (pl.)', 'SZL', 'Cent', 100); -- Eswatini
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ethiopian birr', 'Br', 'ETB', 'Santim', 100); -- Ethiopia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Falkland Islands pound', '£', 'FKP', 'Penny', 100); -- Falkland Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Danish krone', 'kr', 'DKK', 'Øre', 100); -- Faroe Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Faroese króna', 'kr', NULL, 'Oyra', 100); -- Faroe Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Fijian dollar', '$', 'FJD', 'Cent', 100); -- Fiji
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Sentti', 100); -- Finland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- France
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('CFP franc', 'Fr', 'XPF', 'Centime', 100); -- French Polynesia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Central African CFA franc', 'Fr', 'XAF', 'Centime', 100); -- Gabon
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Gambian dalasi', 'D', 'GMD', 'Butut', 100); -- Gambia, The
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Georgian lari', '₾', 'GEL', 'Tetri', 100); -- Georgia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Germany
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ghanaian cedi', '₵', 'GHS', 'Pesewa', 100); -- Ghana
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Gibraltar pound', '£', 'GIP', 'Penny', 100); -- Gibraltar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Greece
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Danish krone', 'kr', 'DKK', 'Øre', 100); -- Greenland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Grenada
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guatemalan quetzal', 'Q', 'GTQ', 'Centavo', 100); -- Guatemala
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guernsey pound', '£', NULL, 'Penny', 100); -- Guernsey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Guernsey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guinean franc', 'Fr', 'GNF', 'Centime', 100); -- Guinea
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Guinea-Bissau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Guyanese dollar', '$', 'GYD', 'Cent', 100); -- Guyana
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Haitian gourde', 'G', 'HTG', 'Centime', 100); -- Haiti
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Honduran lempira', 'L', 'HNL', 'Centavo', 100); -- Honduras
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Hong Kong dollar', '$', 'HKD', 'Cent', 100); -- Hong Kong
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Hungarian forint', 'Ft', 'HUF', 'Fillér', 100); -- Hungary
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Icelandic króna', 'kr', 'ISK', 'Eyrir', 100); -- Iceland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Indian rupee', '₹', 'INR', 'Paisa', 100); -- India
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Indonesian rupiah', 'Rp', 'IDR', 'Sen', 100); -- Indonesia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Iranian rial', 'Rl or Rls (pl.)', 'IRR', 'Rial', 1); -- Iran
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Iraqi dinar', 'ID', 'IQD', 'Fils', 1000); -- Iraq
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Ireland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Manx pound', '£', NULL, 'Penny', 100); -- Isle of Man
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Isle of Man
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Israeli new shekel', '₪', 'ILS', 'Agora', 100); -- Israel
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Italy
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jamaican dollar', '$', 'JMD', 'Cent', 100); -- Jamaica
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Japanese yen', '¥', 'JPY', 'Sen', 100); -- Japan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jersey pound', '£', NULL, 'Penny', 100); -- Jersey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- Jersey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jordanian dinar', 'JD', 'JOD', 'Piastre', 100); -- Jordan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kazakhstani tenge', '₸', 'KZT', 'Tıyn', 100); -- Kazakhstan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kenyan shilling', 'Sh or Shs (pl.)', 'KES', 'Cent', 100); -- Kenya
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Kiribati
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kiribati dollar', '$', NULL, 'Cent', 100); -- Kiribati
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('North Korean won', '₩', 'KPW', 'Chon', 100); -- Korea, North
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South Korean won', '₩', 'KRW', 'Jeon', 100); -- Korea, South
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Kosovo
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kuwaiti dinar', 'KD', 'KWD', 'Fils', 1000); -- Kuwait
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Kyrgyz som', 'som', 'KGS', 'Tyiyn', 100); -- Kyrgyzstan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Lao kip', '₭', 'LAK', 'Att', 100); -- Laos
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Latvia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Lebanese pound', 'LL', 'LBP', 'Piastre', 100); -- Lebanon
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Lesotho loti', 'L or M (pl.)', 'LSL', 'Sente', 100); -- Lesotho
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- Lesotho
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Liberian dollar', '$', 'LRD', 'Cent', 100); -- Liberia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Libyan dinar', 'LD', 'LYD', 'Dirham', 1000); -- Libya
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swiss franc', 'Fr', 'CHF', 'Rappen', 100); -- Liechtenstein
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Lithuania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Luxembourg
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Hong Kong dollar', '$', 'HKD', 'Cent', 100); -- Macau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Macanese pataca', 'MOP$', 'MOP', 'Avo', 100); -- Macau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Malagasy ariary', 'Ar', 'MGA', 'Iraimbilanja', 5); -- Madagascar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Malawian kwacha', 'K', 'MWK', 'Tambala', 100); -- Malawi
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Malaysian ringgit', 'RM', 'MYR', 'Sen', 100); -- Malaysia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Maldivian rufiyaa', 'Rf', 'MVR', 'Laari', 100); -- Maldives
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Mali
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Malta
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Marshall Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mauritanian ouguiya', 'UM', 'MRU', 'Khoums', 5); -- Mauritania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mauritian rupee', 'Re or Rs (pl.)', 'MUR', 'Cent', 100); -- Mauritius
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mexican peso', '$', 'MXN', 'Centavo', 100); -- Mexico
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Micronesia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Moldovan leu', 'Leu or Lei (pl.)', 'MDL', 'Ban', 100); -- Moldova
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Monaco
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mongolian tögrög', '₮', 'MNT', 'Möngö', 100); -- Mongolia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Montenegro
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Montserrat
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Moroccan dirham', 'DH', 'MAD', 'Centime', 100); -- Morocco
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mozambican metical', 'Mt', 'MZN', 'Centavo', 100); -- Mozambique
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Burmese kyat', 'K or Ks (pl.)', 'MMK', 'Pya', 100); -- Myanmar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Namibian dollar', '$', 'NAD', 'Cent', 100); -- Namibia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- Namibia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Nauru
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Nepalese rupee', 'Re or Rs (pl.)', 'NPR', 'Paisa', 100); -- Nepal
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Netherlands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('CFP franc', 'Fr', 'XPF', 'Centime', 100); -- New Caledonia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- New Zealand
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Nicaraguan córdoba', 'C$', 'NIO', 'Centavo', 100); -- Nicaragua
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Niger
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Nigerian naira', '₦', 'NGN', 'Kobo', 100); -- Nigeria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- Niue
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Niue dollar', '$', NULL, 'Cent', 100); -- Niue
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Macedonian denar', 'DEN', 'MKD', 'Deni', 100); -- North Macedonia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Turkish lira', '₺', 'TRY', 'Kuruş', 100); -- Northern Cyprus
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Norwegian krone', 'kr', 'NOK', 'Øre', 100); -- Norway
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Omani rial', 'RO', 'OMR', 'Baisa', 1000); -- Oman
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Pakistani rupee', 'Re or Rs (pl.)', 'PKR', 'Paisa', 100); -- Pakistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Palau
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Israeli new shekel', '₪', 'ILS', 'Agora', 100); -- Palestine
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Jordanian dinar', 'JD', 'JOD', 'Piastre', 100); -- Palestine
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Panamanian balboa', 'B/', 'PAB', 'Centésimo', 100); -- Panama
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Panama
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Papua New Guinean kina', 'K', 'PGK', 'Toea', 100); -- Papua New Guinea
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Paraguayan guaraní', '₲', 'PYG', 'Céntimo', 100); -- Paraguay
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Peruvian sol', 'S/', 'PEN', 'Céntimo', 100); -- Peru
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Philippine peso', '₱', 'PHP', 'Sentimo', 100); -- Philippines
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Zealand dollar', '$', 'NZD', 'Cent', 100); -- Pitcairn Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Pitcairn Islands dollar', '$', NULL, 'Cent', 100); -- Pitcairn Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Polish złoty', 'zł', 'PLN', 'Grosz', 100); -- Poland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Portugal
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Qatari riyal', 'QR', 'QAR', 'Dirham', 100); -- Qatar
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Romanian leu', 'Leu or Lei (pl.)', 'RON', 'Ban', 100); -- Romania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Russian rouble', '₽', 'RUB', 'Kopeck', 100); -- Russia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Rwandan franc', 'Fr', 'RWF', 'Centime', 100); -- Rwanda
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Saba
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Algerian dinar', 'DA', 'DZD', 'Santeem', 100); -- Sahrawi Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Mauritanian ouguiya', 'UM', 'MRU', 'Khoums', 5); -- Sahrawi Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Moroccan dirham', 'DH', 'MAD', 'Centime', 100); -- Sahrawi Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sahrawi peseta', 'Pta or Pts (pl.)', NULL, 'Centime', 100); -- Sahrawi Republic
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Saint Helena pound', '£', 'SHP', 'Penny', 100); -- Saint Helena
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Saint Kitts and Nevis
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Saint Lucia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Eastern Caribbean dollar', '$', 'XCD', 'Cent', 100); -- Saint Vincent and the Grenadines
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Samoan tālā', '$', 'WST', 'Sene', 100); -- Samoa
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- San Marino
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Saudi riyal', 'Rl or Rls (pl.)', 'SAR', 'Halala', 100); -- Saudi Arabia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Senegal
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Serbian dinar', 'DIN', 'RSD', 'Para', 100); -- Serbia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Seychellois rupee', 'Re or Rs (pl.)', 'SCR', 'Cent', 100); -- Seychelles
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sierra Leonean leone', 'Le', 'SLE', 'Cent', 100); -- Sierra Leone
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Brunei dollar', '$', 'BND', 'Sen', 100); -- Singapore
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Singapore dollar', '$', 'SGD', 'Cent', 100); -- Singapore
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Sint Eustatius
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Netherlands Antillean guilder', 'ƒ', 'ANG', 'Cent', 100); -- Sint Maarten
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Slovakia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Slovenia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Solomon Islands dollar', '$', 'SBD', 'Cent', 100); -- Solomon Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Somali shilling', 'Sh or Shs (pl.)', 'SOS', 'Cent', 100); -- Somalia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Somaliland shilling', 'Sh or Shs (pl.)', NULL, 'Cent', 100); -- Somaliland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South African rand', 'R', 'ZAR', 'Cent', 100); -- South Africa
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Russian rouble', '₽', 'RUB', 'Kopeck', 100); -- South Ossetia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('South Sudanese pound', NULL, 'SSP', 'Piaster', 100); -- South Sudan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Spain
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sri Lankan rupee', 'Re or Rs (pl.)', 'LKR', 'Cent', 100); -- Sri Lanka
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sudanese pound', 'LS', 'SDG', 'Piastre', 100); -- Sudan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Surinamese dollar', '$', 'SRD', 'Cent', 100); -- Suriname
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swedish krona', 'kr', 'SEK', 'Öre', 100); -- Sweden
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Swiss franc', 'Fr', 'CHF', 'Rappen', 100); -- Switzerland
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Syrian pound', 'LS', 'SYP', 'Piastre', 100); -- Syria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('São Tomé and Príncipe dobra', 'Db', 'STN', 'Cêntimo', 100); -- São Tomé and Príncipe
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('New Taiwan dollar', '$', 'TWD', 'Cent', 100); -- Taiwan, Republic of China
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tajikistani somoni', 'SM', 'TJS', 'Diram', 100); -- Tajikistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tanzanian shilling', 'Sh or Shs (pl.)', 'TZS', 'Cent', 100); -- Tanzania
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Thai baht', '฿', 'THB', 'Satang', 100); -- Thailand
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('West African CFA franc', 'Fr', 'XOF', 'Centime', 100); -- Togo
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tongan paʻanga', 'T$', 'TOP', 'Seniti', 100); -- Tonga
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Transnistrian ruble', 'р', NULL, 'Kopeck', 100); -- Transnistria
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Trinidad and Tobago dollar', '$', 'TTD', 'Cent', 100); -- Trinidad and Tobago
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tunisian dinar', 'DT', 'TND', 'Millime', 1000); -- Tunisia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Turkish lira', '₺', 'TRY', 'Kuruş', 100); -- Turkey
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Turkmenistani manat', 'm', 'TMT', 'Tenge', 100); -- Turkmenistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- Turks and Caicos Islands
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Australian dollar', '$', 'AUD', 'Cent', 100); -- Tuvalu
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Tuvaluan dollar', '$', NULL, 'Cent', 100); -- Tuvalu
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ugandan shilling', 'Sh or Shs (pl.)', 'UGX', NULL, (none)); -- Uganda
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Ukrainian hryvnia', '₴', 'UAH', 'Kopeck', 100); -- Ukraine
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United Arab Emirates dirham', 'Dh or Dhs (pl.)', 'AED', 'Fils', 100); -- United Arab Emirates
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Sterling', '£', 'GBP', 'Penny', 100); -- United Kingdom
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('United States dollar', '$', 'USD', 'Cent', 100); -- United States
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Uruguayan peso', '$', 'UYU', 'Centésimo', 100); -- Uruguay
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Uzbekistani soum', 'soum', 'UZS', 'Tiyin', 100); -- Uzbekistan
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Vanuatu vatu', 'VT', 'VUV', 'Cent', 100); -- Vanuatu
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Euro', '€', 'EUR', 'Cent', 100); -- Vatican City
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Venezuelan digital bolívar', 'Bs.D', 'VED', 'Céntimo', 100); -- Venezuela
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Venezuelan sovereign bolívar', 'Bs.S', 'VES', 'Céntimo', 100); -- Venezuela
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Vietnamese đồng', '₫', 'VND', 'Hào', 10); -- Vietnam
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('CFP franc', 'Fr', 'XPF', 'Centime', 100); -- Wallis and Futuna
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Yemeni rial', 'Rl or Rls (pl.)', 'YER', 'Fils', 100); -- Yemen
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('Zambian kwacha', 'K', 'ZMW', 'Ngwee', 100); -- Zambia
INSERT INTO currency (name, symbol, iso_code, fractional_unit, number_to_basic) VALUES ('RTGS dollar', '$', NULL, 'Cent', 100); -- Zimbabwe
