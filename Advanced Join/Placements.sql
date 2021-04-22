SELECT S.name FROM Students S JOIN Friends F on S.id = F.id 
JOIN Packages P on S.id = P.id JOIN Packages P1 on P1.id = F.friend_id
WHERE(p1.salary > p.salary) ORDER BY P1.salary;
