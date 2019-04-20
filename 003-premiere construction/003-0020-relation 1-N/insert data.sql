
INSERT INTO `Planete`
(`Nom`)
VALUES
('Kashyyk');

INSERT INTO `Planete`
(`Nom`)
VALUES
('Tatooine');

INSERT INTO `Planete`
(`Nom`)
VALUES
('Coruscant');

INSERT INTO `Planete`
(`Nom`)
VALUES
('Dagoba');


INSERT INTO `typevaisseau`
(`Nom`)
VALUES
('Médecine');

INSERT INTO `typevaisseau`
(`Nom`)
VALUES
('Chasseur');

INSERT INTO `typevaisseau`
(`Nom`)
VALUES
('Croiseur');

INSERT INTO `vaisseau`
(`Nom`,
`Longueur`,
`Largeur`,
`TypeVaisseauId`)
VALUES
('X-Wing',
 5.5,
 2,
 5);
 
INSERT INTO `vaisseau`
(`Nom`,
`Longueur`,
`Largeur`,
`TypeVaisseauId`)
VALUES
('Vaisseau empereur',
 100,
 80,
 6);
 
 
UPDATE `wookie`
SET
`PlaneteId` = 4;





