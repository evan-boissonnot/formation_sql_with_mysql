-- Tri des wookies par nom
select
	Nom
from
	Wookie
order by
	Nom;
   
-- Tri descendant
select
	Nom
from
	Wookie
order by nom desc;

-- Tri par alias
select
	Nom as NomWookie
from
	Wookie
order by
	NomWookie;
    
-- Tri des droides par points de vie
select 
	Matricule, 
    PointsDeVie
from
	Droide
order by
	PointsDeVie;
    
-- Tri des wookies par date de naissance, puis par points de vie
select
	Nom,
	DateDeNaissance,
    PointsDeVie
from
	wookie
order by
	DateDeNaissance,
    PointsDeVie