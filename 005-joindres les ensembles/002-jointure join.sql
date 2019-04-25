select 
	*
from
	wookie;
    
select 
	*
from
	wookie
join
	planete on wookie.planete_id = planete.id;
    
select 
	*
from
	wookie
join
	planete on wookie.planete_id = planete.id
where
	planete.libelle = 'Kashyyk';


select 
	*
from 
	role;
    
select 
	*
from
	wookie_role_etre;
    
select 
	*
from
	wookie_role_etre
join
	role on wookie_role_etre.role_id = role.id;
    
select 
	*
from
	wookie_role_etre
join
	role on wookie_role_etre.role_id = role.id
where 
	role.libelle = 'Chasseur';
    
    
    
select 
	*
from
	wookie_role_etre
join
	wookie on wookie_role_etre.wookie_id = wookie.id;
    

select 
	*
from
	wookie_role_etre
join
	role on wookie_role_etre.role_id = role.id
join 
	wookie on wookie_role_etre.wookie_id = wookie.id
where 
	role.libelle = 'Chasseur';
    
select 
	*
from
	wookie_role_etre
join
	role on wookie_role_etre.role_id = role.id
join 
	wookie on wookie_role_etre.wookie_id = wookie.id
join
	planete on wookie.planete_id = planete.id
where 
	role.libelle = 'Chasseur' and
    planete.libelle = 'Kashyyk';
    
    
select 
	*
from
	wookie
join
	planete on wookie.planete_id = planete.id
join
	wookie_role_etre on wookie.id = wookie_role_etre.wookie_id
join
	role on wookie_role_etre.role_id = role.id
where 
	role.libelle = 'Chasseur' and
    planete.libelle = 'Kashyyk';
    

select 
	wookie.nom as 'Nom du wookie',
    role.libelle as 'Role',
    planete.libelle as 'Planete'
from
	wookie
join
	planete on wookie.planete_id = planete.id
join
	wookie_role_etre on wookie.id = wookie_role_etre.wookie_id
join
	role on wookie_role_etre.role_id = role.id
where 
	role.libelle = 'Chasseur' and
    planete.libelle = 'Kashyyk';


-- regarder le plan d'exécution
explain
select 
	wookie.nom as 'Nom du wookie',
    role.libelle as 'Role',
    planete.libelle as 'Planete'
from
	wookie
join
	wookie_role_etre on wookie.id = wookie_role_etre.wookie_id
join
	role on wookie_role_etre.role_id = role.id and role.libelle = 'Chasseur'
join
	planete on wookie.planete_id = planete.id
where 
    planete.libelle = 'Kashyyk';
