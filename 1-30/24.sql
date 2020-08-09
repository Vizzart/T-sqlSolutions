WITH model_CTE (model,price)
AS (
	SELECT model,price
	FROM PC
	WHERE price >= (SELECT  
					 MAX(price) 
					FROM PC
					)

	UNION 

	SELECT 
	model,price
	FROM Laptop 
	WHERE price >= (SELECT
					 max(price) 
					FROM Laptop
					)

	UNION

	SELECT 
	model,price
	FROM Printer 
	WHERE price >= (SELECT
					MAX(price) 
					FROM Printer
					)

)

SELECT
 model 
FROM model_CTE 
WHERE price >= (SELECT 
				 MAX(price) 
				FROM model_CTE
				)
