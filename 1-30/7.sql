SELECT lap.model, lap.price  FROM Laptop AS lap
 INNER JOIN Product as prod ON 
lap.model = prod.model
WHERE prod.maker = 'B'

UNION

SELECT prt.model, prt.price  FROM Printer AS prt
 INNER JOIN Product as prod ON 
prt.model = prod.model
WHERE prod.maker = 'B'

UNION 

SELECT pc.model, price  FROM PC AS pc
 INNER JOIN Product as prod ON 
pc.model = prod.model
WHERE prod.maker = 'B'
