SELECT DISTINCT
 Product.maker 
 FROM Product 
JOIN PC 
 ON PC.model=Product.model
WHERE type ='PC' 
 and PC.speed in ( SELECT 
					MAX(PC.speed) 
					FROM PC 
					WHERE PC.ram = (
									SELECT 
									 MIN(PC.ram)	
									FROM PC 
									)
				 )

 and pc.ram = (SELECT 
				MIN(PC.ram)
			   FROM PC
			  )


INTERSECT  

SELECT DISTINCT 
 Product.maker 
FROM Product 
WHERE Product.type = 'Printer'
