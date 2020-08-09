WITH CTE(point, date, out, inc)
AS 
(
    SELECT point, date, null, inc
        FROM income
        UNION ALL
        SELECT point, date, out, null
        FROM outcome
)

SELECT point
		,date
		,SUM(out) as Outcome
		,SUM(inc) as Income
FROM CTE
GROUP BY point, date
