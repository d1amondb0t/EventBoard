INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES (NULL, 'admin', 'admin', 'admin@gmail.com', '5141234567', '2023-05-25');
INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES (NULL, 'Test1', 'test1', 'test@gmail.com', '5141234567', '2023-05-25');
INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES (NULL, 'Test2', 'test2', 'test2@gmail.com', '5141234567', '2023-05-25');
INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES (NULL, 'Test3', 'test3', 'test3@gmail.com', '5141234567', '2023-05-25');
INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES (NULL, 'Test4', 'test4', 'test4@gmail.com', '5141234567', '2023-05-25');
INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `motDePasse`, `courriel`, `telephone`, `dateCreation`) VALUES (NULL, 'Test5', 'test5', 'test5@gmail.com', '5141234567', '2023-05-25');
INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES (NULL, 'EvenementTest1', 'Montreal', '2023-05-31 17:35:24', '1', 'Cela est un test');
INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES (NULL, 'EvenementTest2', 'NYC', '2023-05-31 17:35:24', '2', 'Cela est un test 2 ');
INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES (NULL, 'EvenementTest3', 'Laval', '2023-05-31 17:35:24', '1', 'Cela est un test 3');
INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES (NULL, 'EvenementTest4', 'Vancouver', '2023-05-31 17:35:24', '2', 'Cela est un test 4');
INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES (NULL, 'EvenementTest5', 'LA', '2023-05-31 17:35:24', '1', 'Cela est un test 5');
INSERT INTO `evenement` (`idEvenement`, `nomEvenement`, `location`, `date`, `idOrganisateur`, `description`) VALUES (NULL, 'EvenementTest6', 'NYC', '2023-05-31 17:35:24', '2', 'Cela est un test 6');
INSERT INTO `commentaire` (`idCommentaire`, `idEvenement`, `idUtilisateur`, `date`, `texte`) VALUES ('1', '1', '2', '2023-05-25 17:40:38', 'This is a test comment');
INSERT INTO `commentaire` (`idCommentaire`, `idEvenement`, `idUtilisateur`, `date`, `texte`) VALUES ('2', '2', '2', '2023-05-25 17:40:38', 'This is a test comment');
INSERT INTO `commentaire` (`idCommentaire`, `idEvenement`, `idUtilisateur`, `date`, `texte`) VALUES ('3', '3', '2', '2023-05-25 17:40:38', 'This is a test comment');
INSERT INTO `commentaire` (`idCommentaire`, `idEvenement`, `idUtilisateur`, `date`, `texte`) VALUES ('4', '4', '2', '2023-05-25 17:40:38', 'This is a test comment');
INSERT INTO `commentaire` (`idCommentaire`, `idEvenement`, `idUtilisateur`, `date`, `texte`) VALUES ('5', '5', '2', '2023-05-25 17:40:38', 'This is a test comment');

