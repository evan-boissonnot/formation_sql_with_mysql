
-- convertir une chaine en date
select 
	cast('2019-04-25' as datetime);

-- récupérer le jour, le mois, l'année
SET @une_date := cast('2019-04-25' as datetime);
select  @une_date;

select 
	DAY(@une_date), 
    MONTH(@une_date),
    YEAR(@une_date);

-- présentation de dual, mais qui n'est pas nécessaire
select 
 'test'
from dual;

-- remplacement d'une chaine par une autre
select
	Nom,
    REPLACE(Nom, 'C', 'D')
from wookie;

-- mise en minuscule, majuscule
select 
	lower('ABRACADABRA'),
    upper('abracadabri');
    
-- concaténer
select
	concat('coucou', ' ', 'ca va', '?');
    
    
-- count(*)
select 
	count(*) 
from wookie;

select 
	count(*) as nbWookies 
from wookie;

select 
	count(Nom) as nbWookiesDifferents -- vraiment ?
from wookie;

-- exists
select
	exists(select Nom from wookie where Nom like 'MM');
    
select
	exists(select Nom from wookie where Nom like 'C%')