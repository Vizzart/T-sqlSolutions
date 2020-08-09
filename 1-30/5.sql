select  model,
		speed,
		hd
 from PC 
WHERE price < 600 
 and (cd = '12x' or cd ='24x')
