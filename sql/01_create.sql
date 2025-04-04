-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 04 avr. 2025 à 20:21
-- Version du serveur : 10.11.10-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `u321335528_improovz`
--

-- --------------------------------------------------------

--
-- Structure de la table `IMP_Avis`
--

CREATE TABLE `IMP_Avis` (
  `AVI_ID` int(11) NOT NULL,
  `COM_ID` int(11) NOT NULL,
  `AVI_Avis` varchar(256) NOT NULL,
  `AVI_Note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `IMP_Avis`
--

INSERT INTO `IMP_Avis` (`AVI_ID`, `COM_ID`, `AVI_Avis`, `AVI_Note`) VALUES
(1, 1, 'Site de qualité, bien conçu et responsive, parfait pour gérer notre clientèle facilement ! Prestataire attentif, efficace et répondant parfaitement aux attentes.', 5),
(2, 2, 'Plugin de qualité, relié à une base de données remarquablement conçue. Cet outil transforme notre manière de travailler de façon innovante, simplement parfait', 5),
(3, 3, 'Première commande, un plugin petit mais efficace, avec un prix attractif et une réalisation rapide. Nous retravaillerons avec ce prestataire et le recommandons vivement.', 5),
(4, 4, 'Un second plugin cette fois basé sur l’initiative et les compétences du prestataire, avec des consignes techniques limitées mais un résultat parfaitement abouti.', 5),
(5, 5, 'Un site web qualitatif qui permet a nos utilisateurs de facilement acceder au lore de notre serveur, il est constitué de plusieurs section confecctionné par le prestataire et qui respecte parfaitement nos envies', 5),
(6, 6, 'Developpeur prestataire depuis 4 ans qui a forgé la partie technique de notre serveur en êtant appliqué dans le projet, a participé et a conseillé parfaitement pour les choix que nous avons effectué', 5);

-- --------------------------------------------------------

--
-- Structure de la table `IMP_Carte`
--

CREATE TABLE `IMP_Carte` (
  `CAR_ID` varchar(64) NOT NULL,
  `COM_ID` int(11) DEFAULT NULL,
  `CAR_PREFIX` varchar(4) NOT NULL,
  `CAR_PRENOM` varchar(32) NOT NULL,
  `CAR_NOM` varchar(32) NOT NULL,
  `CAR_COMPANY_NAME` varchar(64) NOT NULL,
  `CAR_POSTE` varchar(64) NOT NULL,
  `CAR_WEBSITE` varchar(64) NOT NULL,
  `CAR_MAIL` varchar(128) NOT NULL,
  `CAR_PHONE` varchar(128) NOT NULL,
  `CAR_NOTES` varchar(256) NOT NULL,
  `CAR_SUFFIX` varchar(64) NOT NULL,
  `CAR_IMAGE` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `IMP_Carte`
--

INSERT INTO `IMP_Carte` (`CAR_ID`, `COM_ID`, `CAR_PREFIX`, `CAR_PRENOM`, `CAR_NOM`, `CAR_COMPANY_NAME`, `CAR_POSTE`, `CAR_WEBSITE`, `CAR_MAIL`, `CAR_PHONE`, `CAR_NOTES`, `CAR_SUFFIX`, `CAR_IMAGE`) VALUES
('322d1b0e-1188-4459-801f-cd8e280e14fd', NULL, 'Mr.', 'Arthur', 'SERRET', 'improovz', 'CEO', 'https://Improovz.fr', 'serret.arthur@improvz.fr', '+33652192842', '', ' - Web Services', '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');

-- --------------------------------------------------------

--
-- Structure de la table `IMP_Client`
--

CREATE TABLE `IMP_Client` (
  `CLI_ID` int(11) NOT NULL,
  `CLI_Nom` varchar(64) NOT NULL,
  `CLI_Prenom` varchar(64) NOT NULL,
  `CLI_Avatar` varchar(10000) DEFAULT 'https://placehold.co/32x32',
  `CLI_Email` varchar(45) NOT NULL,
  `CLI_Numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `IMP_Client`
--

INSERT INTO `IMP_Client` (`CLI_ID`, `CLI_Nom`, `CLI_Prenom`, `CLI_Avatar`, `CLI_Email`, `CLI_Numero`) VALUES
(1, 'InvasionZ', '', '/assets/img/user/0.png', 'InvasionZ@invasionz.fr', 0),
(2, 'Galade', '', '/assets/img/user/1.png', 'Galade@galade.fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `IMP_Commande`
--

CREATE TABLE `IMP_Commande` (
  `COM_ID` int(11) NOT NULL,
  `SER_ID` int(11) NOT NULL,
  `COM_Libelle` varchar(128) NOT NULL,
  `COM_DATE_FACTURATION` date NOT NULL,
  `CLI_ID` int(11) NOT NULL,
  `COM_Facturation` int(11) NOT NULL,
  `TYPF_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `IMP_Commande`
--

INSERT INTO `IMP_Commande` (`COM_ID`, `SER_ID`, `COM_Libelle`, `COM_DATE_FACTURATION`, `CLI_ID`, `COM_Facturation`, `TYPF_ID`) VALUES
(1, 3, 'Admin Panel InvasionZ', '2025-01-16', 1, 60, 3),
(2, 4, 'Plugin Log', '2025-01-16', 1, 60, 3),
(3, 4, 'Plugin Virus', '2024-12-04', 1, 25, 3),
(4, 4, 'Plugin Food', '2024-12-12', 1, 25, 3),
(5, 3, 'Site Web', '2023-06-28', 2, 0, 3),
(6, 4, 'Ensemble de Plugin ', '2020-04-01', 2, 0, 3),
(7, 5, 'Ensemble de Mod ', '2020-04-01', 2, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `IMP_Service`
--

CREATE TABLE `IMP_Service` (
  `SER_ID` int(11) NOT NULL,
  `SER_Libelle` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `IMP_Service`
--

INSERT INTO `IMP_Service` (`SER_ID`, `SER_Libelle`) VALUES
(1, 'Site Web + Hebergement + Nom de Domaine'),
(2, 'Site Web + Hebergement'),
(3, 'Site Web'),
(4, 'Plugin Minecraft'),
(5, 'Mod Minecraft'),
(6, 'Carte de Visite'),
(7, 'Gestion Image Entreprise Sur Internet');

-- --------------------------------------------------------

--
-- Structure de la table `IMP_Type_Facturation`
--

CREATE TABLE `IMP_Type_Facturation` (
  `TYPF_ID` int(11) NOT NULL,
  `TYPF_Libelle` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `IMP_Type_Facturation`
--

INSERT INTO `IMP_Type_Facturation` (`TYPF_ID`, `TYPF_Libelle`) VALUES
(1, 'Mensuel'),
(2, 'Annuel'),
(3, 'One Shot');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `IMP_Avis`
--
ALTER TABLE `IMP_Avis`
  ADD PRIMARY KEY (`AVI_ID`),
  ADD KEY `fk_IMP_Avis_IMP_Commande1_idx` (`COM_ID`);

--
-- Index pour la table `IMP_Carte`
--
ALTER TABLE `IMP_Carte`
  ADD PRIMARY KEY (`CAR_ID`),
  ADD KEY `fk_IMP_Carte_IMP_Commande1_idx` (`COM_ID`);

--
-- Index pour la table `IMP_Client`
--
ALTER TABLE `IMP_Client`
  ADD PRIMARY KEY (`CLI_ID`);

--
-- Index pour la table `IMP_Commande`
--
ALTER TABLE `IMP_Commande`
  ADD PRIMARY KEY (`COM_ID`),
  ADD KEY `fk_IMP_Commande_IMP_Service_idx` (`SER_ID`),
  ADD KEY `fk_IMP_Commande_IMP_Client1_idx` (`CLI_ID`),
  ADD KEY `fk_IMP_Commande_IMP_Type_Facturation1_idx` (`TYPF_ID`);

--
-- Index pour la table `IMP_Service`
--
ALTER TABLE `IMP_Service`
  ADD PRIMARY KEY (`SER_ID`);

--
-- Index pour la table `IMP_Type_Facturation`
--
ALTER TABLE `IMP_Type_Facturation`
  ADD PRIMARY KEY (`TYPF_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `IMP_Avis`
--
ALTER TABLE `IMP_Avis`
  MODIFY `AVI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `IMP_Client`
--
ALTER TABLE `IMP_Client`
  MODIFY `CLI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `IMP_Commande`
--
ALTER TABLE `IMP_Commande`
  MODIFY `COM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `IMP_Service`
--
ALTER TABLE `IMP_Service`
  MODIFY `SER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `IMP_Type_Facturation`
--
ALTER TABLE `IMP_Type_Facturation`
  MODIFY `TYPF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `IMP_Avis`
--
ALTER TABLE `IMP_Avis`
  ADD CONSTRAINT `fk_IMP_Avis_IMP_Commande1` FOREIGN KEY (`COM_ID`) REFERENCES `IMP_Commande` (`COM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `IMP_Carte`
--
ALTER TABLE `IMP_Carte`
  ADD CONSTRAINT `fk_IMP_Carte_IMP_Commande1` FOREIGN KEY (`COM_ID`) REFERENCES `IMP_Commande` (`COM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `IMP_Commande`
--
ALTER TABLE `IMP_Commande`
  ADD CONSTRAINT `fk_IMP_Commande_IMP_Client1` FOREIGN KEY (`CLI_ID`) REFERENCES `IMP_Client` (`CLI_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_IMP_Commande_IMP_Service` FOREIGN KEY (`SER_ID`) REFERENCES `IMP_Service` (`SER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_IMP_Commande_IMP_Type_Facturation1` FOREIGN KEY (`TYPF_ID`) REFERENCES `IMP_Type_Facturation` (`TYPF_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
