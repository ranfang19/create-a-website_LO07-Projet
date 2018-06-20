-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  lun. 18 juin 2018 à 19:10
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lo07projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `disponibilite`
--

CREATE TABLE `disponibilite` (
  `login` varchar(20) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `hdebut` int(20) NOT NULL,
  `hfin` int(20) NOT NULL,
  `ddebut` varchar(20) NOT NULL,
  `dfin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `disponibilite`
--

INSERT INTO `disponibilite` (`login`, `jour`, `hdebut`, `hfin`, `ddebut`, `dfin`) VALUES
('carrie', 'jeudi', 9, 18, '2018-01-01', '2018-12-31'),
('carrie', 'lundi', 12, 18, '2018-01-01', '2018-12-31'),
('carrie', 'mardi', 12, 18, '2018-01-01', '2018-12-31'),
('lilly', 'dimanche', 9, 18, '2018-01-01', '2018-12-31'),
('lilly', 'samedi', 9, 18, '2018-01-01', '2018-12-31'),
('lilly', 'vendredi', 16, 18, '2018-01-01', '2018-12-31'),
('nicolas', 'jeudi', 9, 18, '2018-01-01', '2018-12-31'),
('nicolas', 'lundi', 9, 10, '2018-01-01', '2018-12-31'),
('nicolas', 'mardi', 9, 18, '2018-01-01', '2018-12-31'),
('nicolas', 'mercredi', 9, 18, '2018-01-01', '2018-12-31'),
('tom', 'dimanche', 9, 18, '2018-01-01', '2018-12-31'),
('tom', 'mercredi', 9, 18, '2018-01-01', '2018-12-31'),
('tom', 'samedi', 9, 18, '2018-01-01', '2018-12-31'),
('tom', 'vendredi', 12, 18, '2018-01-01', '2018-12-31');

-- --------------------------------------------------------

--
-- Structure de la table `enfant`
--

CREATE TABLE `enfant` (
  `login` varchar(20) NOT NULL,
  `prenom1` varchar(20) NOT NULL,
  `ddn1` varchar(20) NOT NULL,
  `res_a1` text NOT NULL,
  `prenom2` varchar(20) NOT NULL,
  `ddn2` varchar(20) NOT NULL,
  `res_a2` text NOT NULL,
  `prenom3` varchar(20) NOT NULL,
  `ddn3` varchar(20) NOT NULL,
  `res_a3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enfant`
--

INSERT INTO `enfant` (`login`, `prenom1`, `ddn1`, `res_a1`, `prenom2`, `ddn2`, `res_a2`, `prenom3`, `ddn3`, `res_a3`) VALUES
('paul', 'Popo', '2016-07-13', 'Ils aime les fruits.', 'Papa', '2015-10-13', 'Elle  aimes les pizzas.', 'Pepe', '2013-11-21', 'Il aime tout.'),
('sophie', 'Sasa', '2016-01-12', 'Elle aime pas du tout le poisson.', 'Sisi', '2017-06-07', 'Il aime coca.', 'Soso', '2018-01-10', 'Il  aime pas les légumes.');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `login_nounou` varchar(20) NOT NULL,
  `revenu` varchar(20) NOT NULL,
  `evaluation` varchar(20) NOT NULL,
  `appreciation` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`login_nounou`, `revenu`, `evaluation`, `appreciation`, `date`) VALUES
('nicolas', '39', '5', 'Merci Nicolas', '2018-06-16 14:39:39'),
('lilly', '39', '5', 'Lilly est très patiente.', '2018-06-16 14:40:42'),
('tom', '15', '', '', '2018-07-05 22:00:00'),
('tom', '135', '', '', '2018-07-07 22:00:00'),
('lilly', '140', '', '', '2018-07-13 22:00:00'),
('carrie', '20', '', '', '2018-07-16 22:00:00'),
('carrie', '60', '', '', '2018-07-18 22:00:00'),
('tom', '30', '', '', '2018-07-20 22:00:00'),
('lilly', '20', '', '', '2018-07-27 22:00:00'),
('lilly', '5', '', '', '2018-07-28 22:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `login_administrateur`
--

CREATE TABLE `login_administrateur` (
  `login` varchar(10) NOT NULL,
  `mdp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `login_administrateur`
--

INSERT INTO `login_administrateur` (`login`, `mdp`) VALUES
('fangran', 'fangran'),
('majingyi', 'majingyi');

-- --------------------------------------------------------

--
-- Structure de la table `nounou`
--

CREATE TABLE `nounou` (
  `login` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `portable` varchar(20) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `presentation` varchar(200) NOT NULL,
  `langues` varchar(200) NOT NULL,
  `bloquer` varchar(20) NOT NULL DEFAULT 'non',
  `photo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nounou`
--

INSERT INTO `nounou` (`login`, `mdp`, `nom`, `prenom`, `ville`, `email`, `portable`, `experience`, `presentation`, `langues`, `bloquer`, `photo`) VALUES
('carrie', 'carrie', 'DUPONT', 'Carrie', 'Troyes', 'carrie.dupont@nounou.com', '0721212121', 'J\'ai deux filles.', 'Je suis sérieuse.', 'anglais:espagnol:italien', 'non', '6.jpeg'),
('lilly', 'lilly', 'CHEN', 'Lilly', 'Paris', 'lilly.chen@nunou.com', '0723232323', 'Je suis une étudiante.', 'Je suis disponible tous les weekends.', 'anglais:chinois:japonais', 'non', '5.jpeg'),
('nicolas', 'nicolas', 'DUPONT', 'Nicolas', 'Paris', 'nicolas.dupont@nounou.com', '0724242424', 'Je travaille dans un lycée.', 'J\'aime des enfants.', 'anglais:italien:arabe', 'non', '1.jpeg'),
('tom', 'tom', 'DUPONT', 'Tom', 'Compiègne', 'tom.dupont@nounou.com', '0727272727', 'Je suis un étudiant.', 'Je suis disponible tous les soirs.', 'anglais:portugais', 'non', '4.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `parent`
--

CREATE TABLE `parent` (
  `login` varchar(50) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `parent`
--

INSERT INTO `parent` (`login`, `mdp`, `nom`, `ville`, `email`, `info`) VALUES
('paul', 'paul', 'Legrand', 'Paris', 'paul@gmail.com', 'Je suis pas toujours chez moi, donc je cherche un/une nounou pour garder mes enfants.'),
('sophie', 'sophie', 'Legrand', 'Troyes', 'sophie@gmail', 'Mes enfants sont sages.');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_langue`
--

CREATE TABLE `reservation_langue` (
  `login_parent` varchar(50) NOT NULL,
  `login_nounou` varchar(50) NOT NULL,
  `langue` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `enfant1` varchar(50) DEFAULT NULL,
  `enfant2` varchar(50) DEFAULT NULL,
  `enfant3` varchar(50) DEFAULT NULL,
  `fini` varchar(20) NOT NULL DEFAULT 'non',
  `nbenfant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation_langue`
--

INSERT INTO `reservation_langue` (`login_parent`, `login_nounou`, `langue`, `date`, `enfant1`, `enfant2`, `enfant3`, `fini`, `nbenfant`) VALUES
('sophie', 'tom', 'anglais', '2018-07-20', 'Sasa', 'Sisi', NULL, 'non', 2),
('sophie', 'tom', 'portugais', '2018-07-08', 'Sasa', 'Sisi', 'Soso', 'non', 3);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_ponctuelle`
--

CREATE TABLE `reservation_ponctuelle` (
  `login_parent` varchar(50) NOT NULL,
  `login_nounou` varchar(50) NOT NULL,
  `hdebut` int(10) NOT NULL,
  `hfin` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `enfant1` varchar(50) DEFAULT NULL,
  `enfant2` varchar(50) DEFAULT NULL,
  `enfant3` varchar(50) DEFAULT NULL,
  `fin` varchar(10) NOT NULL DEFAULT 'non',
  `nbenfant` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation_ponctuelle`
--

INSERT INTO `reservation_ponctuelle` (`login_parent`, `login_nounou`, `hdebut`, `hfin`, `date`, `enfant1`, `enfant2`, `enfant3`, `fin`, `nbenfant`) VALUES
('paul', 'carrie', 12, 14, '2018-07-17', 'Popo', NULL, NULL, 'non', 1),
('paul', 'carrie', 9, 12, '2018-07-19', 'Popo', 'Papa', 'Pepe', 'non', 3),
('sophie', 'lilly', 9, 16, '2018-07-14', 'Sasa', 'Sisi', 'Soso', 'non', 3),
('sophie', 'tom', 13, 14, '2018-07-06', 'Sasa', 'Sisi', NULL, 'non', 2);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_reguliere`
--

CREATE TABLE `reservation_reguliere` (
  `login_parent` varchar(50) NOT NULL,
  `login_nounou` varchar(50) NOT NULL,
  `enfant1` varchar(50) NOT NULL,
  `enfant2` varchar(50) DEFAULT NULL,
  `enfant3` varchar(50) DEFAULT NULL,
  `jour` varchar(50) NOT NULL,
  `hdebut` varchar(50) NOT NULL,
  `hfin` varchar(50) NOT NULL,
  `ddebut` varchar(50) NOT NULL,
  `dfin` varchar(50) NOT NULL,
  `fini` varchar(50) NOT NULL,
  `nbenfant` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation_reguliere`
--

INSERT INTO `reservation_reguliere` (`login_parent`, `login_nounou`, `enfant1`, `enfant2`, `enfant3`, `jour`, `hdebut`, `hfin`, `ddebut`, `dfin`, `fini`, `nbenfant`) VALUES
('sophie', 'carrie', 'Sasa', 'Sisi', 'Soso', 'jeudi', '15', '18', '2018-11-01', '2018-12-31', 'non', 3),
('paul', 'lilly', 'Popo', 'Papa', 'Pepe', 'samedi', '9', '12', '2018-01-01', '2018-12-31', 'oui', 3),
('sophie', 'nicolas', 'Sasa', 'Sisi', 'Soso', 'mardi', '9', '14', '2018-01-01', '2018-12-31', 'oui', 3),
('paul', 'tom', 'Popo', 'Papa', 'Pepe', 'mercredi', '12', '15', '2018-01-01', '2018-12-31', 'non', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `disponibilite`
--
ALTER TABLE `disponibilite`
  ADD PRIMARY KEY (`login`,`jour`);

--
-- Index pour la table `enfant`
--
ALTER TABLE `enfant`
  ADD PRIMARY KEY (`login`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`date`);

--
-- Index pour la table `login_administrateur`
--
ALTER TABLE `login_administrateur`
  ADD PRIMARY KEY (`login`);

--
-- Index pour la table `nounou`
--
ALTER TABLE `nounou`
  ADD PRIMARY KEY (`login`);

--
-- Index pour la table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`login`);

--
-- Index pour la table `reservation_langue`
--
ALTER TABLE `reservation_langue`
  ADD PRIMARY KEY (`login_nounou`,`langue`,`date`);

--
-- Index pour la table `reservation_ponctuelle`
--
ALTER TABLE `reservation_ponctuelle`
  ADD PRIMARY KEY (`login_nounou`,`date`);

--
-- Index pour la table `reservation_reguliere`
--
ALTER TABLE `reservation_reguliere`
  ADD PRIMARY KEY (`login_nounou`,`jour`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
