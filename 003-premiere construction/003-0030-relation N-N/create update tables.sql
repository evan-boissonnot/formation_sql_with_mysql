CREATE TABLE `WookieDroideAttaquer` (
  `WookieId` int(11) NOT NULL,
  `DroideId` int(11) NOT NULL,  
  PRIMARY KEY (`WookieId`, `DroideId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `WookieDroideAttaquer`
  ADD CONSTRAINT `FK_Wookie_WookieDroideAttaquer` FOREIGN KEY (`WookieId`) REFERENCES `Wookie` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `WookieDroideAttaquer`
  ADD CONSTRAINT `FK_Droide_WookieDroideAttaquer` FOREIGN KEY (`DroideId`) REFERENCES `Droide` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;



CREATE TABLE `Role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(250) NOT NULL,  
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `RoleWookieAppartenir` (
  `WookieId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,  
  PRIMARY KEY (`WookieId`, `RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `RoleWookieAppartenir`
  ADD CONSTRAINT `FK_Wookie_RoleWookieAppartenir` FOREIGN KEY (`WookieId`) REFERENCES `Wookie` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `RoleWookieAppartenir`
  ADD CONSTRAINT `FK_Role_RoleWookieAppartenir` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;


CREATE TABLE `RoleDroideAppartenir` (
  `DroideId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,  
  PRIMARY KEY (`DroideId`, `RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `RoleDroideAppartenir`
  ADD CONSTRAINT `FK_Droide_RoleDroideAppartenir` FOREIGN KEY (`DroideId`) REFERENCES `Droide` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `RoleDroideAppartenir`
  ADD CONSTRAINT `FK_Role_RoleDroideAppartenir` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
