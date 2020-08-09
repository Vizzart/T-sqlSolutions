SELECT DISTINCT 
 Product.maker,
 Printer.price
FROM Printer 
 INNER JOIN Product 
 ON Printer.model = Product.model 
WHERE Printer.color = 'y'  
		 AND Printer.price = (SELECT 
								MIN(Printer.price) 
							  FROM Printer
							  WHERE Printer.color = 'y'
							 )
