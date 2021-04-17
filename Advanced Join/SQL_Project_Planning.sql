SELECT start_date, MIN(end_date) FROM 
(SELECT start_date FROM Projects WHERE start_date NOT IN (SELECT end_date FROM Projects)) a,
(SELECT end_date FROM PROJECTS WHERE end_date NOT IN (SELECT start_date FROM PROJECTS)) b
WHERE start_date < end_date
GROUP BY start_date
ORDER BY datediff(start_date, MIN(end_date)) DESC, start_date;

