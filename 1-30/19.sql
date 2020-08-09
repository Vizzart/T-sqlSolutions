SELECT DISTINCT  
 Product.maker,
 AVG(Laptop.screen) 
FROM Laptop
 INNER JOIN Product
 ON Product.model = Laptop.model
GROUP BY maker
