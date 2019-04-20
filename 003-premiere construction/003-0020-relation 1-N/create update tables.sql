CREATE TABLE `Planete` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,  
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

ALTER TABLE `Wookie` 
ADD `PlaneteId` int(11) AFTER `Age`;

CREATE TABLE `Vaisseau` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,  
  `Longueur` decimal(18,4) NOT NULL,  
  `Largeur` decimal(18,4) NOT NULL,  
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `TypeVaisseau` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,  
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

ALTER TABLE `Vaisseau` 
ADD `TypeVaisseauId` int(11);


ALTER TABLE `Droide` 
ADD `VaisseauId` int(11);


ALTER TABLE `Wookie`
  ADD CONSTRAINT `FK_Planete_Wookie` FOREIGN KEY (`PlaneteId`) REFERENCES `Planete` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Vaisseau`
  ADD CONSTRAINT `FK_TypeVaisseau_Vaisseau` FOREIGN KEY (`TypeVaisseauId`) REFERENCES `TypeVaisseau` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Droide`
  ADD CONSTRAINT `FK_Vaisseau_Droide` FOREIGN KEY (`VaisseauId`) REFERENCES `Vaisseau` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;


