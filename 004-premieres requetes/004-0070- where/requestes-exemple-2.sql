select 
	*
from
	Wookie;
    
select 
	*
from
	Wookie
where
	taille > 3 OR
    points_de_vie > 80;
    
select 
	Nom
from
	Wookie
where
	substring(Nom, 1, 1) = 'C' OR -- attention à ne pas trop utiliser les fonctions
    points_de_vie > 80;
   
-- façon plus optimisée sans fonction
select 
	Nom
from
	Wookie
where
	Nom like 'C%' or
    points_de_vie > 80;
    
    