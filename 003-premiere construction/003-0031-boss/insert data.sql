INSERT INTO `role`
(`Libelle`)
VALUES
('Attaquant');

INSERT INTO `role`
(`Libelle`)
VALUES
('Médecin');

INSERT INTO `role`
(`Libelle`)
VALUES
('Sniper');

INSERT INTO `role`
(`Libelle`)
VALUES
('Chef');


INSERT INTO `rolewookieappartenir`
(`WookieId`,
`RoleId`)
VALUES
(
28,
1
);

INSERT INTO `rolewookieappartenir`
(`WookieId`,
`RoleId`)
VALUES
(
28,
2
);

INSERT INTO `rolewookieappartenir`
(`WookieId`,
`RoleId`)
VALUES
(
28,
4
);

INSERT INTO `rolewookieappartenir`
(`WookieId`,
`RoleId`)
VALUES
(
29,
1
);

INSERT INTO `rolewookieappartenir`
(`WookieId`,
`RoleId`)
VALUES
(
29,
3
);



INSERT INTO `roledroideappartenir`
(`DroideId`,
`RoleId`)
SELECT Id, 1
FROM Droide;


INSERT INTO `wookiedroideattaquer`
(`WookieId`,
`DroideId`)
select Wookie.Id, Droide.Id
from Wookie, Droide;
