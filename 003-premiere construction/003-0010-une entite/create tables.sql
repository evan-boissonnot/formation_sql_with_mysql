CREATE TABLE `wookie` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,
  `Taille` decimal(18, 2) NOT NULL,
  `Age` int NOT NULL,  
  `DateDeNaissance` datetime NULL,  
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `droide` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Matricule` varchar(250) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;