SELECT maker,
 COUNT(*) AS number_of_PCs
FROM Product 
WHERE TYPE ='PC' 
GROUP BY maker 
HAVING COUNT(*) > 2
