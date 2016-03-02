-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 02 Mars 2016 à 13:45
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `qcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `difficulte`
--

CREATE TABLE IF NOT EXISTS `difficulte` (
  `numero_difficulte` int(3) NOT NULL,
  `libelle_difficulte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

CREATE TABLE IF NOT EXISTS `discipline` (
  `numero_discipline` int(10) NOT NULL,
  `nom_discipline` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `numero_question` int(50) NOT NULL,
  `numero_discipline` int(50) NOT NULL,
  `numero_difficulte` int(50) NOT NULL,
  `libelle_question` varchar(50) NOT NULL,
  `ordre_question` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire`
--

CREATE TABLE IF NOT EXISTS `questionnaire` (
  `numero_questionnaire` int(50) NOT NULL,
  `date_creation` date NOT NULL,
  `numero_candidat` int(50) NOT NULL,
  `numero_discipline` int(50) NOT NULL,
  `numero_difficulte` int(3) NOT NULL,
  `note_finale` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `question_questionnaire`
--

CREATE TABLE IF NOT EXISTS `question_questionnaire` (
  `numero_questionnaire` int(50) NOT NULL,
  `numero_question` int(50) NOT NULL,
  `ordre_question` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE IF NOT EXISTS `reponse` (
  `numero_reponse` int(50) NOT NULL,
  `libelle_reponse` varchar(50) NOT NULL,
  `numero_question` int(50) NOT NULL,
  `reponse_correcte` int(1) NOT NULL,
  `ordre_reponse` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse_questionnaire`
--

CREATE TABLE IF NOT EXISTS `reponse_questionnaire` (
  `numero_questionnaire` int(50) NOT NULL,
  `numero_question` int(50) NOT NULL,
  `numero_reponse` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
