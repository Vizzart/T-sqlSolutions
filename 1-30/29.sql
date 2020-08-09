SELECT o.point
	 ,o.date
	 ,i.inc
	 ,o.out
FROM Outcome_o o 
LEFT JOIN  Income_o i
 ON o.point =i.point and o.date = i.date 


UNION 

 SELECT i.point
		,i.date
		,i.inc
		,o.out
FROM Income_o i
LEFT JOIN Outcome_o o 
 ON o.point =i.point and o.date = i.date
