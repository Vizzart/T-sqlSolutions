SELECT pc.hd 
FROM pc 
GROUP BY hd
HAVING COUNT(*) >= 2