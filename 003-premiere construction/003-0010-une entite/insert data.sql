delete from `wookie`;
delete from `droide`;

INSERT INTO `wookie`
(
	`Nom`,
    `Taille`,
    `Age`
)
VALUES
(
	'Chewie',
    3.0,
    100
);

INSERT INTO `wookie`
(
	`Nom`,
    `Taille`,
    `Age`
)
VALUES
(
	'Tarful',
    2.9,
    90
);

INSERT INTO `wookie`
(
	`Nom`,
    `Taille`,
    `Age`
)
VALUES
(
	'Salporin',
    3.2,
    100
);


DROP PROCEDURE IF EXISTS insert_droides ;

delimiter //
CREATE procedure insert_droides()
wholeblock:BEGIN
  declare x INT default 0;
  declare matricule VARCHAR(255) default '';
  SET x = 1;

  WHILE x <= 50 DO
	SET matricule = concat('M', x);
  
  
    INSERT INTO `droide`
    (
		`Matricule`
    )
    VALUES
    (
		matricule
    );
    
    
    SET x = x + 1;
  END WHILE;

END//

call insert_droides();
