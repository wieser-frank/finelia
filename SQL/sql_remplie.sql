-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 17 Juillet 2015 à 21:57
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `finelia`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_etudiant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`) VALUES
(1, 'nom_1', 'prenom_1'),
(2, 'nom_2', 'prenom_2'),
(3, 'nom_3', 'prenom_3'),
(4, 'nom_4', 'prenom_4'),
(5, 'nom_5', 'prenom_5'),
(6, 'nom_6', 'prenom_6'),
(7, 'nom_7', 'prenom_7'),
(8, 'nom_8', 'prenom_8'),
(9, 'nom_9', 'prenom_9');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `id_matiere` int(11) NOT NULL AUTO_INCREMENT,
  `nom_matiere` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_matiere`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES
(1, 'Français'),
(2, 'Anglais'),
(3, 'Mathématique'),
(4, 'Histoire'),
(5, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `coefficient` tinyint(4) DEFAULT NULL,
  `note` tinyint(4) DEFAULT NULL,
  `id_matiere` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  PRIMARY KEY (`id_note`),
  KEY `FK_note_id_matiere` (`id_matiere`),
  KEY `FK_note_id_etudiant` (`id_etudiant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`id_note`, `coefficient`, `note`, `id_matiere`, `id_etudiant`) VALUES
(3, 12, 17, 5, 6),
(4, 7, 15, 2, 4),
(5, 4, 16, 2, 4),
(6, 8, 6, 2, 4),
(7, 2, 12, 1, 1),
(8, 2, 14, 1, 1),
(9, 3, 17, 3, 9),
(10, 2, 18, 1, 1),
(11, 5, 11, 3, 3),
(12, 2, 14, 3, 3),
(13, 3, 6, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `participe`
--

CREATE TABLE IF NOT EXISTS `participe` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `id_matiere` int(11) NOT NULL,
  PRIMARY KEY (`id_etudiant`,`id_matiere`),
  KEY `FK_participe_id_matiere` (`id_matiere`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `participe`
--

INSERT INTO `participe` (`id_etudiant`, `id_matiere`) VALUES
(1, 1),
(2, 1),
(3, 1),
(6, 1),
(7, 1),
(2, 2),
(3, 2),
(4, 2),
(7, 2),
(8, 2),
(3, 3),
(4, 3),
(8, 3),
(9, 3),
(1, 4),
(4, 4),
(5, 4),
(9, 4),
(1, 5),
(2, 5),
(5, 5),
(6, 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `FK_note_id_etudiant` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`),
  ADD CONSTRAINT `FK_note_id_matiere` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`);

--
-- Contraintes pour la table `participe`
--
ALTER TABLE `participe`
  ADD CONSTRAINT `FK_participe_id_etudiant` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`),
  ADD CONSTRAINT `FK_participe_id_matiere` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
