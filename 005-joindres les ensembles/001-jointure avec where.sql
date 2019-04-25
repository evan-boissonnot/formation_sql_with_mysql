select 
	*
from
	wookie, 
    planete;
    
select 
	Nom as WookieNom, 
    Libelle as LibellePlanete
from
	wookie, -- attention, ici on fait quand meme un produit scalaire, donc perf pas bonne !!
    planete
where
	wookie.planete_id = planete.id;

-- version améliorée de la jointure    
 select 
	Nom as WookieNom, 
    Libelle as LibellePlanete
from
	wookie 
join    
	planete on wookie.planete_id = planete.id  ;
    
    -- avoir les planetes et les wookies s'ils ont une planete
select 
	*
from 
	planete;
    
select 
	*
from 
	planete
join
	wookie on planete.id = wookie.planete_id;
    
-- resultat ok : plente et planete et wookie
select 
	*
from 
	planete
left join
	wookie on planete.id = wookie.planete_id;
    
-- que planete qui ont pas de wookies
select 
	*
from 
	planete
left join
	wookie on planete.id = wookie.planete_id
where
	wookie.id is null;
    