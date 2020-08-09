SELECT DISTINCT
	p.type
	,l.model
	,l.speed  
FROM Laptop AS l, Product AS  p
 INNER JOIN Laptop ON Laptop.model = p.model
WHERE l.speed < ALL (SELECT 
						MIN(pc.speed)  
					FROM PC  
					)
