/*

Préparez la requête qui va ramener les Wookies qui sont encore en vie.
Ramener le Nom, en minuscule du Wookie, et déterminer l’age de chaque Wookie
Triez-les par Points de vie, puis par age

Préparez la requête qui retourne tous les Droides tués, avec leur Matricule en majuscule.

*/


-- wookie
select 
	*
from 
	wookie;
    
select 
	*
from 
	wookie
where
	PointsDeVie > 0;    


select 
	Nom
from 
	wookie
where
	PointsDeVie > 0;    
    
select 
	lower(Nom)
from 
	wookie
where
	PointsDeVie > 0;   
    
select 
	lower(Nom),
    DateDeNaissance
from 
	wookie
where
	PointsDeVie > 0;   
    
select 
	lower(Nom),
    curdate(), 
    DateDeNaissance
from 
	wookie
where
	PointsDeVie > 0;   
    
select 
	lower(Nom),
    year(curdate()),
    year(DateDeNaissance)
from 
	wookie
where
	PointsDeVie > 0;  
    
select 
	lower(Nom),
    year(curdate()) - year(DateDeNaissance)
from 
	wookie
where
	PointsDeVie > 0;  
    
select 
	lower(Nom),
    year(curdate()) - year(DateDeNaissance) as ageApproximatif
from 
	wookie
where
	PointsDeVie > 0;  
    
select 
	lower(Nom),
    year(curdate()) - year(DateDeNaissance) as ageApproximatif
from 
	wookie
where
	PointsDeVie > 0
order by
	PointsDeVie, ageApproximatif;  
    
    
-- droide
select
	*
from 
	Droide;

select
	Matricule
from 
	Droide;
    
select
	upper(Matricule)
from 
	Droide;
    
select
	upper(Matricule)
from 
	Droide
where
	PointsDeVie = 0;




