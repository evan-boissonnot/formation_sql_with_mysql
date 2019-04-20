ALTER TABLE `Droide` ADD `PointsDeVie` int(11);

ALTER TABLE `wookie` ADD `PointsDeVie` int(11);


ALTER TABLE `wookiedroideattaquer` ADD `PlaneteId` int(11);

ALTER TABLE `WookieDroideAttaquer`
  ADD CONSTRAINT `FK_Planete_WookieDroideAttaquer` FOREIGN KEY (`PlaneteId`) REFERENCES `Planete` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `wookiedroideattaquer` ADD `DateAttaque` datetime;

ALTER TABLE `wookiedroideattaquer` drop primary key, add primary key(`WookieId`, `DroideId`, `PlaneteId`, `DateAttaque`);

ALTER TABLE `wookiedroideattaquer` ADD `DateFinAttaque` datetime;


-- Qui est mort au combat ?
ALTER TABLE `wookiedroideattaquer` ADD `PointDeVieDroideFinCombat` int(11);
ALTER TABLE `wookiedroideattaquer` ADD `PointDeVieWookieFinCombat` int(11);

-- Historique de chaque combat ?
CREATE TABLE `WookieDroideAttaquerHistorique` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateHeureCoup` datetime NOT NULL,
  `CoupDroide` int(11) NOT NULL,
  `CoupWookie` int(11) NOT NULL,
  `WookieId` int(11) NOT NULL,
  `DroideId` int(11) NOT NULL,  
  `PlaneteId` int(11) NOT NULL,  
  `DateAttaque` datetime NOT NULL,  
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `WookieDroideAttaquerHistorique`
  ADD CONSTRAINT `FK_Wookie_WookieDroideAttaquerHistorique` FOREIGN KEY (`WookieId`) REFERENCES `Wookie` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `WookieDroideAttaquerHistorique`
  ADD CONSTRAINT `FK_Droide_WookieDroideAttaquerHistorique` FOREIGN KEY (`DroideId`) REFERENCES `Droide` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `WookieDroideAttaquerHistorique`
  ADD CONSTRAINT `FK_Planete_WookieDroideAttaquerHistorique` FOREIGN KEY (`PlaneteId`) REFERENCES `Planete` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
