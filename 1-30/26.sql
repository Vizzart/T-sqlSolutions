SELECT AVG(price) FROM (SELECT 
						 PC.price 
						FROM  Product
						 INNER JOIN  PC 
						 ON PC.model =Product.model
						WHERE Product.maker = 'A'

						UNION ALL 
						
						SELECT 
						 Laptop.price 
						FROM Product
						 INNER JOIN  Laptop  
						 ON Laptop.model =Product.model
						WHERE Product.maker= 'A'
						) res
