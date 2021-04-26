-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 26 avr. 2021 à 20:55
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agenceimmobiliere`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

DROP TABLE IF EXISTS `annonce`;
CREATE TABLE IF NOT EXISTS `annonce` (
  `IdAnnonce` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(200) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `Prix` decimal(10,0) DEFAULT NULL,
  `DateAnnonce` date NOT NULL DEFAULT current_timestamp(),
  `IsActive` int(11) DEFAULT NULL,
  `Url_Image` varchar(700) DEFAULT NULL,
  `Adresse` varchar(200) DEFAULT NULL,
  `IdStatus` int(11) DEFAULT NULL,
  `IdTypeAnnonce` int(11) DEFAULT NULL,
  `IdUtilisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAnnonce`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`IdAnnonce`, `Titre`, `Description`, `Prix`, `DateAnnonce`, `IsActive`, `Url_Image`, `Adresse`, `IdStatus`, `IdTypeAnnonce`, `IdUtilisateur`) VALUES
(1, 'Vente appartement 2 pièces - 1 chambre - 52 m²', 'NOUVELLE EXCLUSIVITÉ DE VOTRE AGENCE ICI\r\n Au 2ème étage d\'une résidence prisée des années 1930, au calme et au pied des commerces, Appartement de 3 pièces intégralement refait par architecte en 2015, dans le respect du charme de l\'ancien.. Vous y découvrirez une spacieuse pièce à vivre de plus de 29 m² avec cuisine ouverte, 2 chambres confortables (14.14 et 12.39 m²) dont une séparée du salon par une verrière et profitant d\'un balconnet, dressing, salle de bains, WC indépendant.. Un local à usage de buanderie ainsi qu\'une cave complètent cette proposition rare en centre-ville.. Plus de renseignements sur simple demande. 645750 euros (630000 euros Hors Honoraires) - Honoraires: 2.5 % TTC à la charge de l\'acquéreur inclus.', '900000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 3, 1, 2),
(2, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 4, 2, 2),
(3, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 3, 2, 2),
(4, 'Vente appartement 2 pièces - 1 chambre - 52 m²', 'NOUVELLE EXCLUSIVITÉ DE VOTRE AGENCE ICI\r\n Au 2ème étage d\'une résidence prisée des années 1930, au calme et au pied des commerces, Appartement de 3 pièces intégralement refait par architecte en 2015, dans le respect du charme de l\'ancien.. Vous y découvrirez une spacieuse pièce à vivre de plus de 29 m² avec cuisine ouverte, 2 chambres confortables (14.14 et 12.39 m²) dont une séparée du salon par une verrière et profitant d\'un balconnet, dressing, salle de bains, WC indépendant.. Un local à usage de buanderie ainsi qu\'une cave complètent cette proposition rare en centre-ville.. Plus de renseignements sur simple demande. 645750 euros (630000 euros Hors Honoraires) - Honoraires: 2.5 % TTC à la charge de l\'acquéreur inclus.', '900000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 4, 1, 2),
(5, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 3, 2, 2),
(6, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 4, 2, 2),
(7, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 1, 2, 2),
(8, 'Vente appartement 2 pièces - 1 chambre - 52 m²', 'NOUVELLE EXCLUSIVITÉ DE VOTRE AGENCE ICI\r\n Au 2ème étage d\'une résidence prisée des années 1930, au calme et au pied des commerces, Appartement de 3 pièces intégralement refait par architecte en 2015, dans le respect du charme de l\'ancien.. Vous y découvrirez une spacieuse pièce à vivre de plus de 29 m² avec cuisine ouverte, 2 chambres confortables (14.14 et 12.39 m²) dont une séparée du salon par une verrière et profitant d\'un balconnet, dressing, salle de bains, WC indépendant.. Un local à usage de buanderie ainsi qu\'une cave complètent cette proposition rare en centre-ville.. Plus de renseignements sur simple demande. 645750 euros (630000 euros Hors Honoraires) - Honoraires: 2.5 % TTC à la charge de l\'acquéreur inclus.', '900000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 2, 1, 2),
(9, 'Vente appartement 2 pièces - 1 chambre - 52 m²', 'NOUVELLE EXCLUSIVITÉ DE VOTRE AGENCE ICI\r\n Au 2ème étage d\'une résidence prisée des années 1930, au calme et au pied des commerces, Appartement de 3 pièces intégralement refait par architecte en 2015, dans le respect du charme de l\'ancien.. Vous y découvrirez une spacieuse pièce à vivre de plus de 29 m² avec cuisine ouverte, 2 chambres confortables (14.14 et 12.39 m²) dont une séparée du salon par une verrière et profitant d\'un balconnet, dressing, salle de bains, WC indépendant.. Un local à usage de buanderie ainsi qu\'une cave complètent cette proposition rare en centre-ville.. Plus de renseignements sur simple demande. 645750 euros (630000 euros Hors Honoraires) - Honoraires: 2.5 % TTC à la charge de l\'acquéreur inclus.', '900000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 1, 1, 2),
(10, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 2, 2, 2),
(11, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 1, 2, 2),
(12, 'Vente appartement 2 pièces - 1 chambre - 52 m²', 'NOUVELLE EXCLUSIVITÉ DE VOTRE AGENCE ICI\r\n Au 2ème étage d\'une résidence prisée des années 1930, au calme et au pied des commerces, Appartement de 3 pièces intégralement refait par architecte en 2015, dans le respect du charme de l\'ancien.. Vous y découvrirez une spacieuse pièce à vivre de plus de 29 m² avec cuisine ouverte, 2 chambres confortables (14.14 et 12.39 m²) dont une séparée du salon par une verrière et profitant d\'un balconnet, dressing, salle de bains, WC indépendant.. Un local à usage de buanderie ainsi qu\'une cave complètent cette proposition rare en centre-ville.. Plus de renseignements sur simple demande. 645750 euros (630000 euros Hors Honoraires) - Honoraires: 2.5 % TTC à la charge de l\'acquéreur inclus.', '900000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 2, 1, 2),
(13, 'Vente appartement 2 pièces - 1 chambre - 52 m²', 'NOUVELLE EXCLUSIVITÉ DE VOTRE AGENCE ICI\r\n Au 2ème étage d\'une résidence prisée des années 1930, au calme et au pied des commerces, Appartement de 3 pièces intégralement refait par architecte en 2015, dans le respect du charme de l\'ancien.. Vous y découvrirez une spacieuse pièce à vivre de plus de 29 m² avec cuisine ouverte, 2 chambres confortables (14.14 et 12.39 m²) dont une séparée du salon par une verrière et profitant d\'un balconnet, dressing, salle de bains, WC indépendant.. Un local à usage de buanderie ainsi qu\'une cave complètent cette proposition rare en centre-ville.. Plus de renseignements sur simple demande. 645750 euros (630000 euros Hors Honoraires) - Honoraires: 2.5 % TTC à la charge de l\'acquéreur inclus.', '900000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 1, 1, 2),
(14, '\r\nLocation appartement 2 pièces - 1 chambre - 52 m²', 'BAIL MOBILITÉ POSSIBLE (étudiants / pro en mobilité / stage / apprentis)\r\n\r\nCharmant appartement donnant sur cour calme. Situé à la frontière entre Issy les Moulineaux et Paris, cet appartement au quatrième étage avec ascenseur peut accueillir jusqu\'à 4 personnes (avec 1 canapé lit) mais idéal 2 personnes. Bien desservi (Métro Ligne 12, Ligne 8), Tram (T2), Bus 169, l\'appartement se situe à 5 minutes du salon des expositions à Porte de Versailles et à la frontière de Paris.\r\n\r\nAppartement de 50m² situé au 4ème étage. Ce logement est composé de:\r\n-un beau salon boisé avec canapé lit et un petit balconet.\r\n-une cuisine équipée (Lave-vaisselle, Bouilloire, machine à café, four/micro-ondes (2 en 1), plaques de cuisson, réfrigérateur, réfrigérateur)\r\n- Une chambre avec lit double et rangements\r\n-une salle de bain avec baignoire / douche\r\n-Lave-linge, sèche-cheveux, aspirateur\r\n-TV et Wi-Fi', '1000', '2021-04-18', 1, 'images/slide1.jpg', 'Avenue des FAR, Tétouan, Maroc', 2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `typeannonce`
--

DROP TABLE IF EXISTS `typeannonce`;
CREATE TABLE IF NOT EXISTS `typeannonce` (
  `IdTypeAnnonce` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  PRIMARY KEY (`IdTypeAnnonce`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typeannonce`
--

INSERT INTO `typeannonce` (`IdTypeAnnonce`, `Nom`, `Description`) VALUES
(1, 'Vente', 'Les annonces de types vente'),
(2, 'Location', 'Les annonces de types location');

-- --------------------------------------------------------

--
-- Structure de la table `typestatus`
--

DROP TABLE IF EXISTS `typestatus`;
CREATE TABLE IF NOT EXISTS `typestatus` (
  `IdStatus` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(20) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdStatus`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typestatus`
--

INSERT INTO `typestatus` (`IdStatus`, `Libelle`, `Description`) VALUES
(1, 'Nouvelle', 'Annonce vient d\'etre deposee par l\'ennonceur'),
(2, 'Validée', 'Annonce validee par l\'admin'),
(3, 'Vendu', 'Le bien immobilier est vendu'),
(4, 'Loue', 'Le bien immobilier est loue');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(30) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `IsAdmin` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdUtilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUtilisateur`, `Nom`, `Prenom`, `Email`, `Telephone`, `Password`, `IsAdmin`) VALUES
(1, 'PrenomAdmin', 'NomAdmin', 'admin@agence.ma', '06123456', '123456', b'1'),
(2, 'NomAnnonceur', 'PrenomAnnonceur', 'annonceur@gmail.com', '06123456', '123456', b'0'),
(3, 'NomLocataire', 'PrenomLocataire', 'locataire@gmail.com', '06123456', '123456', b'0'),
(4, 'NomAcheteur', 'PrenomAcheteur', 'acheteur@gmail.com', '06123456', '123456', b'0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
