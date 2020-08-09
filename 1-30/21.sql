SELECT Product.maker,
 MAX(PC.price) as maximum_price
FROM Product 
 JOIN PC 
 ON PC.model=Product.model 
GROUP BY maker
