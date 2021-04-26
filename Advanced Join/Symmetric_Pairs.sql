SELECT f1.x, f1.y FROM functions f1, functions f2 WHERE f1.x = f2.y AND f1.y = f2.x
AND f1.x < f1.y
UNION
SELECT x, y FROM functions 
WHERE x = y
GROUP BY x,y
HAVING COUNT(*) = 2
ORDER BY x;
