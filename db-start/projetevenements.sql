-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2023 at 08:56 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

USE projetevenements;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetevenements`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `idCommentaire` int NOT NULL,
  `idEvenement` int NOT NULL,
  `idUtilisateur` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `texte` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commentaire`
--

INSERT INTO `commentaire` (`idCommentaire`, `idEvenement`, `idUtilisateur`, `date`, `texte`) VALUES
(1, 1, 2, '2023-05-25 17:40:38', 'This is a test comment'),
(2, 2, 2, '2023-05-25 17:40:38', 'This is a test comment'),
(3, 3, 2, '2023-05-25 17:40:38', 'This is a test comment'),
(4, 4, 2, '2023-05-25 17:40:38', 'This is a test comment'),
(5, 5, 2, '2023-05-25 17:40:38', 'This is a test comment');

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `idEvenement` int NOT NULL,
  `nomEvenement` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `idOrganisateur` int NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES
(1, 'EvenementTest1', 'Montreal', '2023-05-31 17:35:24', 1, 'Cela est un test'),
(2, 'EvenementTest1', 'Montreal', '2023-05-31 17:35:24', 1, 'Cela est un test'),
(3, 'EvenementTest2', 'NYC', '2023-05-31 17:35:24', 2, 'Cela est un test 2 '),
(4, 'EvenementTest3', 'Laval', '2023-05-31 17:35:24', 1, 'Cela est un test 3'),
(5, 'EvenementTest4', 'Vancouver', '2023-05-31 17:35:24', 2, 'Cela est un test 4'),
(6, 'EvenementTest5', 'LA', '2023-05-31 17:35:24', 1, 'Cela est un test 5'),
(7, 'EvenementTest6', 'NYC', '2023-05-31 17:35:24', 2, 'Cela est un test 6');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int NOT NULL,
  `nomUtilisateur` varchar(50) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `courriel` varchar(50) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `dateCreation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES
(1, 'string', 'string', 'string', 'string', '2023-05-25'),
(2, 'Test1', 'test1', 'test@gmail.com', '5141234567', '2023-05-25'),
(3, 'Test1', 'test1', 'test@gmail.com', '5141234567', '2023-05-25'),
(4, 'Test1', 'test1', 'test@gmail.com', '5141234567', '2023-05-25'),
(5, 'Test2', 'test2', 'test2@gmail.com', '5141234567', '2023-05-25'),
(6, 'Test3', 'test3', 'test3@gmail.com', '5141234567', '2023-05-25'),
(7, 'Test4', 'test4', 'test4@gmail.com', '5141234567', '2023-05-25'),
(8, 'Test5', 'test5', 'test5@gmail.com', '5141234567', '2023-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurevenement`
--

CREATE TABLE `utilisateurevenement` (
  `idEvenement` int NOT NULL,
  `idUtilisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idCommentaire`),
  ADD KEY `FK_EvenComm` (`idEvenement`),
  ADD KEY `FK_UtilComm` (`idUtilisateur`);

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`idEvenement`),
  ADD KEY `FK_organisateur` (`idOrganisateur`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Indexes for table `utilisateurevenement`
--
ALTER TABLE `utilisateurevenement`
  ADD PRIMARY KEY (`idEvenement`,`idUtilisateur`),
  ADD KEY `FK_Util` (`idUtilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `idCommentaire` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `idEvenement` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_EvenComm` FOREIGN KEY (`idEvenement`) REFERENCES `evenement` (`idEvenement`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_UtilComm` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE CASCADE;

--
-- Constraints for table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `FK_organisateur` FOREIGN KEY (`idOrganisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE CASCADE;

--
-- Constraints for table `utilisateurevenement`
--
ALTER TABLE `utilisateurevenement`
  ADD CONSTRAINT `FK_Even` FOREIGN KEY (`idEvenement`) REFERENCES `evenement` (`idEvenement`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Util` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
