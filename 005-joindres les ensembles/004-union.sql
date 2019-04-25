select 
	*
from
	wookie
where 
	wookie.taille < 3;
    
select 
	*
from
	wookie
where 
	wookie.nom like 'F%';
    
    
select 
	*
from
	wookie
where 
	wookie.taille < 3
UNION    
select 
	*
from
	wookie
where 
	wookie.nom like 'F%';
    

    

