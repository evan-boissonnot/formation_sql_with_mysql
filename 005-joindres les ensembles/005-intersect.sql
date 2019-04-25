/*
select 
	Nom
from
	wookie
INTERSECT    
select 
	NOM
from
	wookie;
*/
select 
	distinct Nom 
from 
	wookie
where
	wookie.nom like 'C%' and
	wookie.id in (
		select wookie.id
        from 
			wookie
		where
			wookie.taille < 3
    )