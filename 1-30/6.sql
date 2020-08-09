Select distinct 
	p.maker,
	speed 
from laptop l
 inner join product p
 on l.model = p.model
where hd >= 10.0
