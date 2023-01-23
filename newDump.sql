-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 29, 2020 at 09:27 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `ARTICLE`
--

CREATE TABLE `ARTICLE` (
  `codeArticle` varchar(5) NOT NULL,
  `variete` varchar(25) DEFAULT NULL,
  `calibre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ARTICLE`
--

INSERT INTO `ARTICLE` (`codeArticle`, `variete`, `calibre`) VALUES
('AMAN1', 'AMANDE', 1),
('BACA1', 'CAVENDISH', 1),
('BACA2', 'CAVENDISH', 2),
('BAGO1', 'BAIE DE GOJI', 1),
('BAPL1', 'PLANTIN', 1),
('BAPL2', 'PLANTIN', 2),
('BETT1', 'BETTERAVE', 1),
('CARO1', 'CAROTTE', 1),
('CEAM1', 'AMARELLE', 1),
('CEBI1', 'BIGARREAU', 1),
('CEBI2', 'BIGARREAU', 2),
('CEGI2', 'GIROTTE', 2),
('CEGI3', 'GIROTTE', 3),
('CIBO1', 'CIBOULE', 1),
('CLCA1', 'CASSAR', 1),
('CLMA1', 'MARISSOL', 1),
('CONC1', 'CONCOMBRE', 1),
('CRAM1', 'CRAMBERRY', 1),
('FRCH1', 'CHARLOTTE', 1),
('FRGA1', 'GARIGUETTE', 1),
('FRGA2', 'GARIGUETTE', 2),
('FRGA3', 'GARIGUETTE', 3),
('FRMA1', 'MARIGUETTE', 1),
('GING1', 'GINGEMBRE', 3),
('GRCO1', 'GRAINE DE COURGE', 1),
('GRTO1', 'GRAINE DE TOURNESOL', 1),
('HAVE1', 'HARICOT VERT', 1),
('KIHA1', 'HAYWARD', 1),
('KIHA2', 'HAYWARD', 2),
('KISO2', 'SORELI', 2),
('KISO3', 'SORELI', 3),
('MANG1', 'MAONGOUSTAN', 1),
('NEDA1', 'DAYTONA', 1),
('NEDA2', 'DAYTONA', 2),
('NEGA2', 'GARCIMA', 2),
('NELU1', 'LUCIANA', 1),
('NOCA1', 'NOIX DE CAJOU', 1),
('NOIS1', 'NOISETTE', 1),
('NOIX1', 'NOIX', 1),
('NOMA1', 'NOIX DE MACADAMIA', 1),
('OIBL1', 'ONIGON BLANC', 1),
('OIJA1', 'OIGNON JAUNE', 1),
('PIST1', 'PISTACHE', 1),
('POCO1', 'COMICE', 1),
('POFU1', 'FUJI', 1),
('POFU2', 'FUJI', 2),
('POGA1', 'GALA', 1),
('POGO1', 'GOLDEN', 1),
('POGS1', 'GRANNY SMITH', 1),
('POJA1', 'POIVRON JAUNE', 3),
('POLB1', 'LOUISE BONNE', 1),
('POPL2', 'PINK LADY', 2),
('PORO1', 'POIVRON ROUGE', 2),
('POVE1', 'POIVRON VERT', 1),
('POWI1', 'WILIAMS', 1),
('RACA1', 'CARDINAL', 1),
('RAMI1', 'MIRELLE', 1),
('RAMI2', 'MIRELLE', 2),
('SABA1', 'BATAVIA', 1),
('SALA1', 'LAITUE', 1),
('TOMA1', 'TOMATE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIE`
--

CREATE TABLE `CATEGORIE` (
  `codegen` varchar(3) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `codeArticle` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CATEGORIE`
--

INSERT INTO `CATEGORIE` (`codegen`, `nom`, `codeArticle`) VALUES
('AMA', 'AMANDE', 'AMAN1'),
('BAG', 'BAIE DE GOJI', 'BAGO1'),
('BAN', 'BANANE', 'BACA1'),
('BAN', 'BANANE', 'BACA2'),
('BAN', 'BANANE', 'BAPL1'),
('BAN', 'BANANE', 'BAPL2'),
('BET', 'BETTERAVE', 'BETT1'),
('CAR', 'CAROTTE', 'CARO1'),
('CER', 'CERISE', 'CEAM1'),
('CER', 'CERISE', 'CEBI1'),
('CER', 'CERISE', 'CEBI2'),
('CER', 'CERISE', 'CEGI2'),
('CER', 'CERISE', 'CEGI3'),
('CIB', 'CIBOULE', 'CIBO1'),
('CLE', 'CLEMENTINE', 'CLCA1'),
('CLE', 'CLEMENTINE', 'CLMA1'),
('CON', 'CONCOMBRE', 'CONC1'),
('CRA', 'CRAMBERRY', 'CRAM1'),
('FRA', 'FRAISE', 'FRCH1'),
('FRA', 'FRAISE', 'FRGA1'),
('FRA', 'FRAISE', 'FRGA2'),
('FRA', 'FRAISE', 'FRGA3'),
('FRA', 'FRAISE', 'FRMA1'),
('GIN', 'GINGEMBRE', 'GING1'),
('GRC', 'GRAINE DE COURGE', 'GRCO1'),
('GRT', 'GRAINE DE TOURNESOL', 'GRTO1'),
('HAR', 'HARICOT VERT', 'HAVE1'),
('KIW', 'KIWI', 'KIHA1'),
('KIW', 'KIWI', 'KIHA2'),
('KIW', 'KIWI', 'KISO2'),
('KIW', 'KIWI', 'KISO3'),
('MAN', 'MANGOUSTAN', 'MANG1'),
('NEC', 'NECTARINE', 'NEDA1'),
('NEC', 'NECTARINE', 'NEDA2'),
('NEC', 'NECTARINE', 'NEGA2'),
('NEC', 'NECTARINE', 'NELU1'),
('NOC', 'NOIX DE CAJOU', 'NOCA1'),
('NOM', 'NOIX DE MACADAMIA', 'NOMA1'),
('NOS', 'NOISETTE', 'NOIS1'),
('NOX', 'NOIX', 'NOIX1'),
('OIG', 'OIGNON', 'OIBL1'),
('OIG', 'OIGNON', 'OIJA1'),
('PIS', 'PISTACHE', 'PIST1'),
('POI', 'POIRE', 'POCO1'),
('POI', 'POIRE', 'POLB1'),
('POI', 'POIRE', 'POWI1'),
('POM', 'POMME', 'POFU1'),
('POM', 'POMME', 'POFU2'),
('POM', 'POMME', 'POGA1'),
('POM', 'POMME', 'POGO1'),
('POM', 'POMME', 'POGS1'),
('POM', 'POMME', 'POPL2'),
('POV', 'POIVRON', 'POJA1'),
('POV', 'POIVRON', 'PORO1'),
('POV', 'POIVRON', 'POVE1'),
('RAI', 'RAISIN', 'RACA1'),
('RAI', 'RAISIN', 'RAMI1'),
('RAI', 'RAISIN', 'RAMI2'),
('SAL', 'SALADE', 'SABA1'),
('SAL', 'SALADE', 'SALA1'),
('TOM', 'TOMATE', 'TOMA1');

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIECLI`
--

CREATE TABLE `CATEGORIECLI` (
  `nomtarif` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CATEGORIECLI`
--

INSERT INTO `CATEGORIECLI` (`nomtarif`) VALUES
('association'),
('basic'),
('grossiste'),
('restaurateur'),
('service public');

-- --------------------------------------------------------

--
-- Table structure for table `CHANGEPRIX`
--

CREATE TABLE `CHANGEPRIX` (
  `nomtarif` varchar(20) NOT NULL,
  `codeArticle` varchar(5) NOT NULL,
  `prix` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHANGEPRIX`
--

INSERT INTO `CHANGEPRIX` (`nomtarif`, `codeArticle`, `prix`) VALUES
('basic', 'AMAN1', 1),
('basic', 'BACA1', 1),
('basic', 'BACA2', 1),
('basic', 'BAGO1', 1),
('basic', 'BAPL1', 1),
('basic', 'BAPL2', 1),
('basic', 'BETT1', 1),
('basic', 'CARO1', 1),
('basic', 'CEAM1', 1),
('basic', 'CEBI1', 1),
('basic', 'CEBI2', 1),
('basic', 'CEGI2', 1),
('basic', 'CEGI3', 1),
('basic', 'CIBO1', 1),
('basic', 'CLCA1', 1),
('basic', 'CLMA1', 1),
('basic', 'CONC1', 1),
('basic', 'CRAM1', 1),
('basic', 'FRCH1', 1),
('basic', 'FRGA1', 1),
('basic', 'FRGA2', 1),
('basic', 'FRGA3', 1),
('basic', 'FRMA1', 1),
('basic', 'GING1', 1),
('basic', 'GRCO1', 1),
('basic', 'GRTO1', 1),
('basic', 'HAVE1', 1),
('basic', 'KIHA1', 1),
('basic', 'KIHA2', 1),
('basic', 'KISO2', 1),
('basic', 'KISO3', 1),
('basic', 'MANG1', 1),
('basic', 'NEDA1', 1),
('basic', 'NEDA2', 1),
('basic', 'NEGA2', 1),
('basic', 'NELU1', 1),
('basic', 'NOCA1', 1),
('basic', 'NOIS1', 1),
('basic', 'NOIX1', 1),
('basic', 'NOMA1', 1),
('basic', 'OIBL1', 1),
('basic', 'OIJA1', 1),
('basic', 'PIST1', 1),
('basic', 'POCO1', 1),
('basic', 'POFU1', 1),
('basic', 'POFU2', 1),
('basic', 'POGA1', 1),
('basic', 'POGO1', 1),
('basic', 'POGS1', 1),
('basic', 'POJA1', 1),
('basic', 'POLB1', 1),
('basic', 'POPL2', 1),
('basic', 'PORO1', 1),
('basic', 'POVE1', 1),
('basic', 'POWI1', 1),
('basic', 'RACA1', 1),
('basic', 'RAMI1', 1),
('basic', 'RAMI2', 1),
('basic', 'SABA1', 1),
('basic', 'SALA1', 1),
('basic', 'TOMA1', 1),
('restaurateur', 'AMAN1', 0.5),
('restaurateur', 'BACA1', 0.5),
('restaurateur', 'BACA2', 0.5),
('restaurateur', 'BAGO1', 0.5),
('restaurateur', 'BAPL1', 0.5),
('restaurateur', 'BAPL2', 0.5),
('restaurateur', 'BETT1', 0.5),
('restaurateur', 'CARO1', 0.5),
('restaurateur', 'CEAM1', 0.5),
('restaurateur', 'CEBI1', 0.5),
('restaurateur', 'CEBI2', 0.5),
('restaurateur', 'CEGI2', 0.5),
('restaurateur', 'CEGI3', 0.5),
('restaurateur', 'CIBO1', 0.5),
('restaurateur', 'CLCA1', 0.5),
('restaurateur', 'CLMA1', 0.5),
('restaurateur', 'CONC1', 0.5),
('restaurateur', 'CRAM1', 0.5),
('restaurateur', 'FRCH1', 0.5),
('restaurateur', 'FRGA1', 0.5),
('restaurateur', 'FRGA2', 0.5),
('restaurateur', 'FRGA3', 0.5),
('restaurateur', 'FRMA1', 0.5),
('restaurateur', 'GING1', 0.5),
('restaurateur', 'GRCO1', 0.5),
('restaurateur', 'GRTO1', 0.5),
('restaurateur', 'HAVE1', 0.5),
('restaurateur', 'KIHA1', 0.5),
('restaurateur', 'KIHA2', 0.5),
('restaurateur', 'KISO2', 0.5),
('restaurateur', 'KISO3', 0.5),
('restaurateur', 'MANG1', 0.5),
('restaurateur', 'NEDA1', 0.5),
('restaurateur', 'NEDA2', 0.5),
('restaurateur', 'NEGA2', 0.5),
('restaurateur', 'NELU1', 0.5),
('restaurateur', 'NOCA1', 0.5),
('restaurateur', 'NOIS1', 0.5),
('restaurateur', 'NOIX1', 0.5),
('restaurateur', 'NOMA1', 0.5),
('restaurateur', 'OIBL1', 0.5),
('restaurateur', 'OIJA1', 0.5),
('restaurateur', 'PIST1', 0.5),
('restaurateur', 'POCO1', 0.5),
('restaurateur', 'POFU1', 0.5),
('restaurateur', 'POFU2', 0.5),
('restaurateur', 'POGA1', 0.5),
('restaurateur', 'POGO1', 0.5),
('restaurateur', 'POGS1', 0.5),
('restaurateur', 'POJA1', 0.5),
('restaurateur', 'POLB1', 0.5),
('restaurateur', 'POPL2', 0.5),
('restaurateur', 'PORO1', 0.5),
('restaurateur', 'POVE1', 0.5),
('restaurateur', 'POWI1', 0.5),
('restaurateur', 'RACA1', 0.5),
('restaurateur', 'RAMI1', 0.5),
('restaurateur', 'RAMI2', 0.5),
('restaurateur', 'SABA1', 0.5),
('restaurateur', 'SALA1', 0.5),
('restaurateur', 'TOMA1', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT`
--

CREATE TABLE `CLIENT` (
  `codecli` varchar(7) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `nomtarif` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLIENT`
--

INSERT INTO `CLIENT` (`codecli`, `nom`, `adresse`, `telephone`, `nomtarif`) VALUES
('CXIAOMI', 'XIAOMI', '19 avenue du General de Gaulle', '0635926371', 'grossiste'),
('CSONY', 'SONY', '15 bd Descartes', '0790843926', 'association'),
('CAPPLE', 'APPLE', '3 rue de Belgrave', '0633029909', 'basic'),
('CSAMSUN', 'SAMSUNG', '5 rue de champs', '0789674152', 'restaurateur'),
('CMICROS', 'MICROSOFT', '16 avenue de la Republique', '0743526172', 'service public'),
('CLOUSAD', 'LOUSADO', '32 allee des bouwen', '0109080304', 'grossiste'),
('CLOUVEL', 'LOUVEL', '64 rue des châtaignes', '0304050609', 'service public'),
('CLY', 'LY', '32 rue des noisetiers', '9191919191', 'restaurateur');

-- ------------------------------------

--
-- Table structure for table `EMPLOYE`
--

CREATE TABLE `EMPLOYE` (
  `prenom` varchar(25) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `date_emb` date DEFAULT NULL,
  `fonction` varchar(25) DEFAULT NULL,
  `type_contrat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EMPLOYE`
--

INSERT INTO `EMPLOYE` (`prenom`, `nom`, `date_naiss`, `date_emb`, `fonction`, `type_contrat`) VALUES
('FREDERIC', 'JOYEUX', '2000-08-21', '2019-12-22', 'saisie', 'CDD'),
('JEAN', 'VALJEAN', '1975-09-27', '1996-12-22', 'preparateur', 'CDI'),
('LAURA', 'PASLA', '1998-01-01', '2019-12-22', 'livreur', 'CDD'),
('MARIE', 'LAVIE', '1980-04-15', '1998-04-15', 'mise en rayon', 'CDD'),
('MOHAMED', 'AZIZ', '1997-12-22', '2012-12-22', 'preparateur', 'CDI');


-- --------------------------------------------------------

--
-- Table structure for table `COMMANDE`
--

CREATE TABLE `COMMANDE` (
  `numcommande` serial NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `numtourne` int(11) DEFAULT NULL,
  `nbcolis` int(11) DEFAULT NULL,
  `montantfac` int(11) DEFAULT NULL,
  `codecli` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMANDE`
--

INSERT INTO `COMMANDE` (`prenom`,`numtourne`, `nbcolis`, `montantfac`, `codecli`) VALUES
('FREDERIC',65, 9, 2, 'CXIAOMI'),
('FREDERIC',127, 2, 2, 'CLOUSAD'),
('FREDERIC',90, 1, 2, 'CLY'),
('FREDERIC',119, 8, 2, 'CLOUVEL'),
('FREDERIC',127, 4, 2, 'CSAMSUN');

-- --------------------------------------------------------

--
-- Table structure for table `COMPOSE`
--

CREATE TABLE `COMPOSE` (
  `codeArticle` varchar(10) NOT NULL,
  `numcommande` serial NOT NULL,
  `qte_commande` int(11) DEFAULT NULL,
  `qte_livre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMPOSE`
--

INSERT INTO `COMPOSE` (`codeArticle`, `qte_commande`, `qte_livre`) VALUES
('BACA1',  6, 6),
('CLCA1',  20, 20),
('CONC1',  3, 3),
('FRGA3',  8, 8),
('SALA1',  1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PREPARE`
--

CREATE TABLE `PREPARE` (
  `numcommande` serial NOT NULL,
  `prenom` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PREPARE`
--

INSERT INTO `PREPARE` (`prenom`) VALUES
('JEAN'),
('MOHAMED'),
('MOHAMED'),
('JEAN'),
('JEAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ARTICLE`
--
ALTER TABLE `ARTICLE`
  ADD PRIMARY KEY (`codeArticle`);

--
-- Indexes for table `CATEGORIE`
--
ALTER TABLE `CATEGORIE`
  ADD PRIMARY KEY (`codegen`,`codeArticle`),
  ADD KEY `codeArticle` (`codeArticle`);

--
-- Indexes for table `CATEGORIECLI`
--
ALTER TABLE `CATEGORIECLI`
  ADD PRIMARY KEY (`nomtarif`);

--
-- Indexes for table `CHANGEPRIX`
--
ALTER TABLE `CHANGEPRIX`
  ADD PRIMARY KEY (`nomtarif`,`codeArticle`),
  ADD KEY `codeArticle` (`codeArticle`);

--
-- Indexes for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`codecli`),
  ADD KEY `nomtarif` (`nomtarif`);

--
-- Indexes for table `COMMANDE`
--
ALTER TABLE `COMMANDE`
  ADD PRIMARY KEY (`numcommande`, `prenom`),
  ADD KEY `codecli` (`codecli`);

--
-- Indexes for table `COMPOSE`
--
ALTER TABLE `COMPOSE`
  ADD PRIMARY KEY (`codeArticle`,`numcommande`),
  ADD KEY `numcommande` (`numcommande`);

--
-- Indexes for table `EMPLOYE`
--
ALTER TABLE `EMPLOYE`
  ADD PRIMARY KEY (`prenom`),
  ADD KEY `prenom` (`prenom`);

--
-- Indexes for table `PREPARE`
--
ALTER TABLE `PREPARE`
  ADD PRIMARY KEY (`numcommande`,`prenom`),
  ADD KEY `prenom` (`prenom`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CATEGORIE`
--
ALTER TABLE `CATEGORIE`
  ADD CONSTRAINT `categorie_ibfk_1` FOREIGN KEY (`codeArticle`) REFERENCES `ARTICLE` (`codeArticle`);

--
-- Constraints for table `CHANGEPRIX`
--
ALTER TABLE `CHANGEPRIX`
  ADD CONSTRAINT `changeprix_ibfk_1` FOREIGN KEY (`nomtarif`) REFERENCES `CATEGORIECLI` (`nomtarif`),
  ADD CONSTRAINT `changeprix_ibfk_2` FOREIGN KEY (`codeArticle`) REFERENCES `ARTICLE` (`codeArticle`);

--
-- Constraints for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`nomtarif`) REFERENCES `CATEGORIECLI` (`nomtarif`);

--
-- Constraints for table `COMMANDE`
--
ALTER TABLE `COMMANDE`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`codecli`) REFERENCES `CLIENT` (`codecli`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`prenom`)  REFERENCES `EMPLOYE` (`prenom`);

--
-- Constraints for table `COMPOSE`
--
ALTER TABLE `COMPOSE`
  ADD CONSTRAINT `compose_ibfk_1` FOREIGN KEY (`codeArticle`) REFERENCES `ARTICLE` (`codeArticle`),
  ADD CONSTRAINT `compose_ibfk_2` FOREIGN KEY (`numcommande`) REFERENCES `COMMANDE` (`numcommande`);

--
-- Constraints for table `PREPARE`
--
ALTER TABLE `PREPARE`
  ADD CONSTRAINT `prepare_ibfk_1` FOREIGN KEY (`numcommande`) REFERENCES `COMMANDE` (`numcommande`),
  ADD CONSTRAINT `prepare_ibfk_2` FOREIGN KEY (`prenom`) REFERENCES `EMPLOYE` (`prenom`);
