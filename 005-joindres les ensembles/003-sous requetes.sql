
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
	wookie.nom,
    role_wookie.*
from
(
	select 
		wookie_id,
        role.libelle as libelle_role
	from
		wookie_role_etre
	join
		role on wookie_role_etre.role_id = role.id
	where 
		role.libelle = 'Chasseur'
) as role_wookie
join
	wookie on role_wookie.wookie_id = wookie.id;
    
    
    
explain
select 
	wookie.nom,
    role_wookie.*
from
(
	select 
		wookie_id,
        role.libelle as libelle_role
	from
		wookie_role_etre
	join
		role on wookie_role_etre.role_id = role.id
	where 
		role.libelle = 'Chasseur'
) as role_wookie
join
	wookie on role_wookie.wookie_id = wookie.id;