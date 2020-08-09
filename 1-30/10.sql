SELECT
	Printer.model,
	Printer.price
FROM PRINTER 
WHERE price = ( SELECT 
				 MAX(Printer.price)
				FROM Printer
			 );
