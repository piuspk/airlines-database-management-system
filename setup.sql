#
# TABLE STRUCTURE FOR: Airline
#
DROP DATABASE IF EXISTS AIRLINE_RESERVATION;
CREATE DATABASE AIRLINE_RESERVATION;
USE AIRLINE_RESERVATION;
DROP TABLE IF EXISTS `Airline`;

CREATE TABLE `Airline` (
  `idAirline` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idAirline`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Airline` (`idAirline`, `name`) VALUES (1, 'Frontier');
INSERT INTO `Airline` (`idAirline`, `name`) VALUES (2, 'Virgin America');
INSERT INTO `Airline` (`idAirline`, `name`) VALUES (3, 'Delta');
INSERT INTO `Airline` (`idAirline`, `name`) VALUES (4, 'Southwest');
INSERT INTO `Airline` (`idAirline`, `name`) VALUES (5, 'JetBlue');
INSERT INTO `Airline` (`idAirline`, `name`) VALUES (6, 'Hawaiian');



#
# TABLE STRUCTURE FOR: Locations
#
DROP TABLE IF EXISTS `Locations`;

CREATE TABLE `Locations` (
  `locID` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`locID`)
) ENGINE=InnoDB AUTO_INCREMENT=1050 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1000, 'Cortneyside', 'Algeria');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1001, 'Turcottemouth', 'Nigeria');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1002, 'New Ezequiel', 'Turkey');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1003, 'Anastasiaberg', 'Somalia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1004, 'East Elsiestad', 'Serbia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1005, 'New Elmerview', 'Croatia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1006, 'South Hermina', 'Mauritius');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1007, 'Prosaccoside', 'Bahamas');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1008, 'Abbottborough', 'Lithuania');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1009, 'West Aaron', 'Wallis and Futuna');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1010, 'Katarinatown', 'Uganda');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1011, 'East Hipolito', 'Kenya');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1012, 'South Liliane', 'Burundi');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1013, 'Yundtmouth', 'Angola');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1014, 'Lillystad', 'Saint Lucia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1015, 'Johnsberg', 'Sierra Leone');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1016, 'Tremblayland', 'Nigeria');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1017, 'Gerholdchester', 'Grenada');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1018, 'Lueton', 'Svalbard & Jan Mayen Islands');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1019, 'West Cleochester', 'Cambodia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1020, 'Port Lucymouth', 'Oman');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1021, 'Port Lulu', 'Congo');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1022, 'Theresaburgh', 'Philippines');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1023, 'Angeloport', 'Christmas Island');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1024, 'Lucastown', 'Saint Pierre and Miquelon');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1025, 'Boyleborough', 'Svalbard & Jan Mayen Islands');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1026, 'Darbystad', 'Kuwait');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1027, 'East Janellefort', 'Nauru');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1028, 'Port Pablo', 'Belgium');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1029, 'Maymiebury', 'Philippines');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1030, 'Hartmannstad', 'Uruguay');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1031, 'Joshside', 'Mongolia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1032, 'Barryside', 'Bahamas');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1033, 'North Kira', 'Ukraine');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1034, 'East Luishaven', 'Chad');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1035, 'Durwardberg', 'Greenland');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1036, 'Friesenview', 'Reunion');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1037, 'Reubenfurt', 'Albania');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1038, 'Naomiestad', 'Latvia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1039, 'East German', 'Nepal');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1040, 'East Priscillaville', 'Yemen');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1041, 'South Turnertown', 'Nepal');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1042, 'New Betty', 'Montenegro');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1043, 'Baumbachchester', 'Zambia');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1044, 'Port Codychester', 'Kuwait');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1045, 'Denesikshire', 'Lebanon');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1046, 'Chesleystad', 'Isle of Man');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1047, 'Armstrongshire', 'Saint Kitts and Nevis');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1048, 'Hermistonstad', 'Montserrat');
INSERT INTO `Locations` (`locID`, `city`, `country`) VALUES (1049, 'North Augustine', 'Gambia');



#
# TABLE STRUCTURE FOR: Airport
#

DROP TABLE IF EXISTS `Airport`;

CREATE TABLE `Airport` (
  `idAirport` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `locID` int(11) NOT NULL,
  PRIMARY KEY (`idAirport`),
  KEY `locID` (`locID`),
  CONSTRAINT `Airport_ibfk_1` FOREIGN KEY (`locID`) REFERENCES `Locations` (`locID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (1, ' Deadhorse', 1041);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (2, 'Aniak', 1015);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (3, ' JFK', 1016);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (4, ' McCarran Intl', 1024);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (5, ' Logan Intl', 1045);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (6, ' Miami Intl', 1023);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (7, ' Dallas Fort Worth Intl', 1025);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (8, ' Minneapolis Intl', 1040);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (9, ' San Diego Intl', 1035);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (10, ' O\'Hare Intl', 1032);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (11, ' SFO Intl', 1023);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (12, ' Hartsfield-Jackson ATL Intl', 1014);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (13, ' LAX', 1016);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (14, ' Bethel', 1043);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (15, ' Midway Intl', 1027);
INSERT INTO `Airport` (`idAirport`, `name`, `locID`) VALUES (16, ' Denver Intl', 1014);
#
# TABLE STRUCTURE FOR: Person
#

DROP TABLE IF EXISTS `Person`;

CREATE TABLE `Person` (
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `pFirst` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pLast` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pAge` int(11) NOT NULL,
  `phoneNum` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=1050 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1000, 'Mrs. Burnice Wisozk Sr.', 'Connelly', 12, '(568)414-4934', 'heidenreich.arielle@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1001, 'Gwen Murazik', 'Altenwerth', 77, '968.221.9422x262', 'kailey68@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1002, 'Dr. Herminia Bashirian', 'Harvey', 76, '499.883.4604', 'uwolff@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1003, 'Jasper O\'Hara', 'Powlowski', 3, '(218)599-7553x39', 'kuhn.nayeli@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1004, 'Everette Gleichner', 'Cremin', 71, '365-603-3733x735', 'vweber@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1005, 'Raphael Hermiston', 'Kunde', 19, '502.032.4017x814', 'jdenesik@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1006, 'Margarita Von', 'McGlynn', 48, '858-406-1863x103', 'ida.pagac@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1007, 'Theron Ernser', 'Batz', 8, '914.448.1682', 'fgottlieb@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1008, 'Van Thompson', 'Swift', 10, '885-289-0430', 'darby28@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1009, 'Stephon Schulist I', 'Hickle', 70, '(078)889-7028x07', 'kwiegand@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1010, 'Zane Jacobson', 'Collier', 87, '1-512-446-3319', 'rene44@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1011, 'Dr. Ashly Littel', 'VonRueden', 23, '406.895.0372x891', 'jakob32@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1012, 'Delphia Witting', 'Muller', 46, '427-331-1791x794', 'cframi@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1013, 'Caleigh Dicki PhD', 'Hegmann', 29, '823.098.6954x516', 'keith37@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1014, 'Michele Bashirian IV', 'Beatty', 82, '(391)114-3749x01', 'abrakus@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1015, 'Ms. Kyla Marquardt DDS', 'Torphy', 30, '950.259.5940x964', 'hegmann.nya@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1016, 'Brendon Witting', 'Kohler', 77, '+64(2)6636158183', 'nlebsack@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1017, 'Jerrold McKenzie III', 'Hills', 24, '839.029.8828x253', 'king.fisher@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1018, 'Wilbert Wunsch', 'Hilpert', 10, '034-780-1756x925', 'breitenberg.alysha@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1019, 'Rod Spencer I', 'Hauck', 13, '+91(3)5199359208', 'margot24@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1020, 'Van Waelchi', 'Vandervort', 21, '(520)355-2988', 'toby.klein@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1021, 'Kathryn Hettinger', 'Reynolds', 51, '(436)581-9701x65', 'volkman.emil@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1022, 'Santos Lehner', 'Bayer', 78, '1-808-507-7797x7', 'gusikowski.citlalli@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1023, 'Dariana Schneider', 'Keeling', 40, '(663)413-8283x70', 'kyla40@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1024, 'Lorine Reynolds', 'D\'Amore', 48, '571-163-6929x920', 'funk.marilie@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1025, 'Kieran Cummings', 'Johns', 30, '(949)306-1850', 'tromp.mason@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1026, 'Ms. Angelica Collier II', 'Kling', 16, '094-165-0706x248', 'kiara71@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1027, 'Gianni Towne', 'Zulauf', 53, '1-661-307-3114', 'mckenzie.maryam@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1028, 'Christopher Weissnat', 'Lang', 43, '951.319.7027x329', 'cremin.darrel@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1029, 'Sigurd Gorczany', 'Rowe', 20, '170.152.5057x392', 'thad.boyle@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1030, 'Reanna Cormier', 'Huel', 26, '+15(6)2257799054', 'tveum@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1031, 'Wilhelmine Turcotte IV', 'O\'Kon', 100, '09655696664', 'alexis10@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1032, 'Prof. Mossie Gleichner PhD', 'Hirthe', 31, '987.624.0986x987', 'tyree12@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1033, 'Ms. Verlie Hickle MD', 'Spinka', 58, '+36(4)7547638161', 'harvey.scot@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1034, 'Nora Wolf PhD', 'Hackett', 92, '1-083-583-7725x6', 'breitenberg.ronaldo@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1035, 'Ashlee Lueilwitz', 'Bradtke', 12, '1-010-537-3462x9', 'everette93@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1036, 'Ava Hoppe', 'Stamm', 78, '(729)570-0500x07', 'fheaney@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1037, 'Bethel Thiel', 'Schiller', 11, '051-801-8957x993', 'bosco.elmore@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1038, 'Jeanne Schmitt', 'Schmeler', 4, '00847628043', 'kayleigh71@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1039, 'Mallie Douglas', 'Gusikowski', 6, '00120521078', 'bins.genoveva@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1040, 'Madaline Nikolaus', 'Littel', 99, '+19(4)5369765381', 'ondricka.bailey@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1041, 'Aurelio Morissette', 'Kessler', 3, '1-122-365-5358x2', 'cnikolaus@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1042, 'Emiliano West III', 'Rempel', 51, '(935)978-1203', 'alayna42@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1043, 'Garett McCullough', 'Mayert', 61, '(567)464-1457', 'bednar.stewart@example.com');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1044, 'Madyson Brown', 'Bednar', 55, '(961)183-1847x70', 'lcole@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1045, 'Merritt Hagenes', 'Stokes', 62, '425-486-7291', 'crooks.thalia@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1046, 'Melba Reinger', 'Hoeger', 39, '+89(3)3101663693', 'ppfannerstill@example.org');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1047, 'Annabell Cronin', 'Hayes', 45, '741-440-7983x375', 'luciano.bogan@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1048, 'Ms. Rachel Grady V', 'Block', 18, '1-837-457-0448', 'beier.cruz@example.net');
INSERT INTO `Person` (`pID`, `pFirst`, `pLast`, `pAge`, `phoneNum`, `email`) VALUES (1049, 'Mireya Parker', 'Quigley', 51, '(998)651-3103x49', 'srunolfsdottir@example.com');

#
# TABLE STRUCTURE FOR: PlaneModel
#

DROP TABLE IF EXISTS `PlaneModel`;

CREATE TABLE `PlaneModel` (
  `idModel` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`idModel`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PlaneModel` (`idModel`, `name`, `capacity`) VALUES (1000, ' Boeing 747', 133);
INSERT INTO `PlaneModel` (`idModel`, `name`, `capacity`) VALUES (1001, ' Boeing 737 Max', 177);
INSERT INTO `PlaneModel` (`idModel`, `name`, `capacity`) VALUES (1002, 'Boeing 737', 142);



#
# TABLE STRUCTURE FOR: Plane
#

DROP TABLE IF EXISTS `Plane`;

CREATE TABLE `Plane` (
  `planeID` int(11) NOT NULL AUTO_INCREMENT,
  `idAirline` int(11) NOT NULL,
  `idModel` int(11) NOT NULL,
  PRIMARY KEY (`planeID`),
  KEY `idAirline` (`idAirline`),
  KEY `idModel` (`idModel`),
  CONSTRAINT `Plane_ibfk_1` FOREIGN KEY (`idAirline`) REFERENCES `Airline` (`idAirline`) ON DELETE CASCADE,
  CONSTRAINT `Plane_ibfk_2` FOREIGN KEY (`idModel`) REFERENCES `PlaneModel` (`idModel`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1050 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1000, 3, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1001, 1, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1002, 2, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1003, 4, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1004, 4, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1005, 5, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1006, 6, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1007, 2, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1008, 3, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1009, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1010, 2, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1011, 1, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1012, 1, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1013, 1, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1014, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1015, 1, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1016, 3, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1017, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1018, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1019, 5, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1020, 4, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1021, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1022, 3, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1023, 4, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1024, 1, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1025, 2, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1026, 2, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1027, 5, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1028, 3, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1029, 5, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1030, 3, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1031, 4, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1032, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1033, 2, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1034, 6, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1035, 1, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1036, 4, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1037, 1, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1038, 1, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1039, 5, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1040, 2, 1002);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1041, 4, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1042, 2, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1043, 5, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1044, 1, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1045, 5, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1046, 3, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1047, 1, 1000);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1048, 6, 1001);
INSERT INTO `Plane` (`planeID`, `idAirline`, `idModel`) VALUES (1049, 6, 1002);

#
# TABLE STRUCTURE FOR: Flight
#

DROP TABLE IF EXISTS `Flight`;

CREATE TABLE `Flight` (
  `flightID` int(11) NOT NULL AUTO_INCREMENT,
  `planeID` int(11) NOT NULL,
  `departAirportID` int(11) NOT NULL,
  `arriveAirportID` int(11) NOT NULL,
  `departDateTime` DateTime NOT NULL,
  `arriveDateTime` DateTime NOT NULL,
  `totalPassengers` int(11) DEFAULT 0 CHECK (totalPassengers >=  0),
  PRIMARY KEY (`flightID`),
  KEY `planeID` (`planeID`),
  KEY `departAirportID` (`departAirportID`),
  KEY `arriveAirportID` (`arriveAirportID`),
  CONSTRAINT `Flight_ibfk_1` FOREIGN KEY (`planeID`) REFERENCES `Plane` (`planeID`) ON DELETE CASCADE,
  CONSTRAINT `Flight_ibfk_2` FOREIGN KEY (`departAirportID`) REFERENCES `Airport` (`idAirport`) ON DELETE CASCADE,
  CONSTRAINT `Flight_ibfk_3` FOREIGN KEY (`arriveAirportID`) REFERENCES `Airport` (`idAirport`) ON DELETE CASCADE,
  CHECK(arriveDateTime > departDateTime),
  CHECK(departAirportID <> arriveAirportID)
) ENGINE=InnoDB AUTO_INCREMENT=1050 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1001, 1047, 4, 3,  '1985-04-08 14:30:00','1993-02-14 14:30:00', 0);


INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1004, 1020, 6, 10,  '2006-07-16 14:30:00','2011-12-05 14:30:00', 0);

INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1006, 1002, 1, 6,  '1977-07-25 14:30:00','1980-04-24 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1007, 1046, 15, 2,  '1986-05-29 14:30:00','2015-05-25 14:30:00', 0);

INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1011, 1025, 7, 6,  '1986-12-12 14:30:00','2009-07-15 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1012, 1033, 8, 5,  '1975-11-12 14:30:00','1975-11-30 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1013, 1005, 3, 1,  '1970-05-19 14:30:00','1990-06-14 14:30:00', 0);




INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1018, 1022, 6, 15,  '1981-08-20 14:30:00','1991-01-13 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1019, 1012, 16, 2,  '1974-08-05 14:30:00','1989-08-06 14:30:00', 0);

INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1021, 1027, 1, 15,  '1999-02-15 14:30:00','2011-11-23 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1022, 1043, 11, 7,  '2006-05-21 14:30:00','2008-07-06 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1023, 1006, 13, 9,  '2008-03-23 14:30:00','2013-06-15 14:30:00', 0);


INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1026, 1021, 4, 5,  '1994-04-03 14:30:00','2018-01-06 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1027, 1017, 10, 6,  '1990-06-14 14:30:00','2005-02-12 14:30:00', 0);



INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1031, 1036, 5, 3,  '1972-10-11 14:30:00','1986-03-08 14:30:00', 0);



INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1035, 1033, 1, 16,  '1971-07-09 14:30:00','1979-11-17 14:30:00', 0);

INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1037, 1006, 13, 12,  '1976-03-31 14:30:00','1979-01-17 14:30:00', 0);


INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1040, 1040, 5, 13,  '1985-01-17 14:30:00','2014-05-14 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1041, 1048, 16, 2,  '1971-12-08 14:30:00','2017-01-31 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1042, 1005, 11, 5,  '1978-08-10 14:30:00','2018-01-24 14:30:00', 0);




INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1047, 1025, 15, 6,  '1975-12-16 14:30:00','1990-11-06 14:30:00', 0);
INSERT INTO `Flight` (`flightID`, `planeID`, `departAirportID`, `arriveAirportID`, `departDateTime`, `arriveDateTime`, `totalPassengers`) VALUES (1048, 1011, 6, 5,  '1997-01-19 14:30:00','2014-06-09 14:30:00', 0);


#
# TABLE STRUCTURE FOR: Passenger
#

DROP TABLE IF EXISTS `Passenger`;

CREATE TABLE `Passenger` (
  `flightID` int(11) NOT NULL,
  `pID` int(11) NOT NULL,
  `seatNumber` char(5) NOT NULL,
  `weight`      DECIMAL(10, 2) DEFAULT 0.00,
  `extraCharge` DECIMAL(10, 2) DEFAULT 0.00,
  PRIMARY KEY (`flightID`,`pID`),
  KEY `pID` (`pID`),
  CONSTRAINT `Passenger_ibfk_1` FOREIGN KEY (`flightID`) REFERENCES `Flight` (`flightID`) ON DELETE CASCADE,
  CONSTRAINT `Passenger_ibfk_2` FOREIGN KEY (`pID`) REFERENCES `Person` (`pID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1001, 1000, 'A1', 15, 25);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1004, 1001, 'B2', 20, 10);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1006, 1002, 'C3', 25, 30);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1007, 1003, 'D4', 12, 5);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1007, 1004, 'E5', 18, 20);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1011, 1005, 'F6', 22, 15);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1012, 1006, 'G7', 28, 35);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1012, 1007, 'H8', 14, 8);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1004, 1008, 'I9', 30, 40);
INSERT INTO `Passenger` (flightID, pID, seatNumber, weight, extraCharge) VALUES (1013, 1009, 'J10', 10, 3);


#
# TABLE STRUCTURE FOR: ArchiveFlights
#

DROP TABLE IF EXISTS `ArchiveFlights`;

CREATE TABLE `ArchiveFlights` (
  `flightID` int(11) NOT NULL AUTO_INCREMENT,
  `planeID` int(11) NOT NULL,
  `departAirportID` int(11) NOT NULL,
  `arriveAirportID` int(11) NOT NULL,
  `departDateTime` DateTime NOT NULL,
  `arriveDateTime` DateTime NOT NULL,
  `totalPassengers` int(11) NOT NULL,
  PRIMARY KEY (`flightID`),
  KEY `planeID` (`planeID`),
  KEY `departAirportID` (`departAirportID`),
  KEY `arriveAirportID` (`arriveAirportID`),
  CONSTRAINT `ArchiveFlights_ibfk_1` FOREIGN KEY (`planeID`) REFERENCES `Plane` (`planeID`) ON DELETE CASCADE,
  CONSTRAINT `ArchiveFlights_ibfk_2` FOREIGN KEY (`departAirportID`) REFERENCES `Airport` (`idAirport`) ON DELETE CASCADE,
  CONSTRAINT `ArchiveFlights_ibfk_3` FOREIGN KEY (`arriveAirportID`) REFERENCES `Airport` (`idAirport`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP PROCEDURE IF EXISTS checkPersonExists;
DELIMITER //
CREATE PROCEDURE checkPersonExists
(
	IN personID INT,
    OUT personExists BOOLEAN
)
BEGIN
	SELECT COUNT(*) > 0
    INTO personExists
    FROM Person
    WHERE pID = personID;
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS checkFlightExists;
DELIMITER //
CREATE PROCEDURE checkFlightExists
(
	IN fID INT,
    OUT flightExists BOOLEAN
)
BEGIN
	SELECT COUNT(*) > 0
    INTO flightExists
    FROM Flight
    WHERE Flight.flightID = fID;
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS checkPlaneExists;
DELIMITER //
CREATE PROCEDURE checkPlaneExists
(
	IN pID INT,
    OUT planeExists BOOLEAN
)
BEGIN
	SELECT COUNT(*) > 0
    INTO planeExists
    FROM Plane
    WHERE Plane.planeID = pID;
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS checkAirportExists;
DELIMITER //
CREATE PROCEDURE checkAirportExists
(
	IN aID INT,
    OUT airportExists BOOLEAN
)
BEGIN
	SELECT COUNT(*) > 0
    INTO airportExists
    FROM Airport
    WHERE Airport.idAirport = aID;
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS archiveFlights;
DELIMITER //
CREATE PROCEDURE archiveFlights
(
	IN cutoff DateTime
)
BEGIN
	INSERT INTO ArchiveFlights
    SELECT * FROM Flight
    WHERE arriveDateTime <= cutoff;
    
    DELETE FROM Flight
    WHERE arriveDateTime <= cutoff;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS checkIfSeatIsTaken;
DELIMITER //
CREATE PROCEDURE checkIfSeatIsTaken
(
	IN seatNo char(2),
    IN fID INT,
    OUT seatTaken boolean
)
BEGIN
	SELECT seatNo IN (
		SELECT seatNumber
        FROM Passenger
        WHERE fID = flightID
    )
    INTO seatTaken;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS checkIfFlightFull;
DELIMITER //
CREATE PROCEDURE checkIfFlightFull
(
    IN fID INT,
    OUT isFull boolean
)
BEGIN
	SELECT totalPassengers = capacity INTO isFull
	FROM Flight JOIN Plane USING(planeID) JOIN PlaneModel USING(idModel)
	WHERE flightID = fID;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS UpdateLuggageWeight;
DELIMITER //
CREATE PROCEDURE UpdateLuggageWeight(
    IN pid_param INT,
    IN fid_param INT,
    IN newLuggageWeight DECIMAL(10, 2)
)
BEGIN
    
    DECLARE extCharge DECIMAL(10, 2);
    IF  newLuggageWeight> 15.0 THEN
        SET extCharge = (newLuggageWeight - 15.0) * 200.00;
    ELSE
        SET extCharge = 0;
    END IF;
    UPDATE Passenger
    SET `weight` = newLuggageWeight,extraCharge = extCharge
    WHERE pID = pid_param AND flightID= fid_param;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS insertPassenger;
DELIMITER //
CREATE TRIGGER insertPassenger
AFTER INSERT ON Passenger
FOR EACH ROW
BEGIN
	UPDATE Flight
    SET totalPassengers = totalPassengers + 1
    WHERE NEW.flightID = Flight.flightID;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS removePassenger;
DELIMITER //
CREATE TRIGGER removePassenger
AFTER DELETE ON Passenger
FOR EACH ROW
BEGIN
	UPDATE Flight
	SET totalPassengers = totalPassengers - 1
    WHERE OLD.flightID = Flight.flightID;
END//
DELIMITER ;

-- DROP TRIGGER IF EXISTS CalculateExtraChargeTrigger;
-- DELIMITER //
-- CREATE TRIGGER CalculateExtraChargeTrigger
-- AFTER INSERT ON Passenger
-- FOR EACH ROW
-- BEGIN
--     DECLARE extCharge DECIMAL(10, 2);

--     IF NEW.weight > 15.0 THEN
--         SET extCharge = (NEW.weight - 15.0) * 200.00;
--     ELSE
--         SET extCharge = 0;
--     END IF;
--     UPDATE Passenger SET extraCharge = extCharge WHERE pID = NEW.pID;
-- END //
-- DELIMITER ;

-- DROP TRIGGER IF EXISTS UpdateExtraChargeTrigger;
-- DELIMITER //
-- CREATE TRIGGER UpdateExtraChargeTrigger
-- AFTER UPDATE ON Passenger
-- FOR EACH ROW
-- BEGIN
--     DECLARE extCharge DECIMAL(10, 2);
--     IF (@ifUpdateLuggageWeight) THEN
--         IF NEW.weight <> OLD.weight THEN
--             IF NEW.weight > 15.0 THEN
--                 SET extCharge = (NEW.weight - 15.0) * 200.00;
--             ELSE
--                 SET extCharge = 0;
--             END IF;
--             UPDATE Passenger SET extraCharge = extCharge WHERE pID = NEW.pID;
--         END IF;
--     END IF;
-- END //
-- DELIMITER ;