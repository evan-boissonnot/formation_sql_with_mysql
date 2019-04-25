select 
	*
from
	planete
join
	wookie on planete.id = wookie.planete_id;

-- simuler les deux colonnes de résultats
select 
	planete.libelle as planete_libelle,
    0
from
	planete
join
	wookie on planete.id = wookie.planete_id;
    

select 
	planete.libelle as planete_libelle,
    count(*) as nb_wookies
from
	planete
join
	wookie on planete.id = wookie.planete_id;
    
    
select 
	planete.libelle as planete_libelle,
    count(*) as nb_wookies
from
	planete
join
	wookie on planete.id = wookie.planete_id
group by 
	planete.id, planete.libelle;
    
    
-- filtre sur les aggregations
select 
	planete.libelle as planete_libelle,
    count(*) as nb_wookies
from
	planete
join
	wookie on planete.id = wookie.planete_id
group by 
	planete.id, planete.libelle
having 
	nb_wookies > 1;