/*
 * Sélection des wookies commençant par la lettre 'W'
 */
 
 select 
	Nom
 from 
	wookie;
 
 select 
	Nom
 from 
	wookie
 where
	 upper(substr(Nom, 1, 1)) = 'W';
     
-- Utilisation du like
 select 
	Nom
 from 
	wookie
 where
	Nom like 'W%';
    
/*
 * Récupération des Droides avec matricule finissant par W
 */
 select 
	Matricule
from 
	Droide
where
	Matricule like '%W';
    
-- Récupérer les wookies de plus de 3 mètres ou avec des points de vie > 90
select
	Nom, Taille, PointsDeVie
from
	wookie
where
	Taille > 3 or
    PointsDeVie > 90;