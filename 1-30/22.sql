SELECT DISTINCT  
	PC.speed,
	AVG(PC.price)as average_price
FROM PC 
WHERE PC.speed > 600
GROUP BY PC.speed
