SELECT Product.maker
FROM Product
INNER JOIN PC  
 on PC.model = Product.model 
WHERE PC.speed >= 750 

INTERSECT 

SELECT 
 Product.maker 
FROM Product
INNER JOIN Laptop  
 ON Laptop.model = Product.model 
WHERE Laptop.speed >= 750
