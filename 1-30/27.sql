SELECT  maker
		,AVG(PC.hd) 
FROM Product
JOIN PC 
 ON pc.model = Product.model
WHERE maker  in (
				 SELECT 
				  maker  
				 FROM  Product 
				 WHERE type = 'Printer' 
				)
GROUP BY maker
