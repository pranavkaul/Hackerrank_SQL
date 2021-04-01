SELECT H.hacker_id,H.name, COUNT(C.challenge_id) AS total_count 
FROM Hackers H JOIN Challenges C ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id,H.name
HAVING total_count = 
(SELECT COUNT(C1.challenge_id) as max_count FROM Challenges C1 GROUP BY C1.hacker_id ORDER BY max_count DESC LIMIT 1)
OR
total_count IN 
(SELECT DISTINCT(other_counts) FROM (SELECT h1.hacker_id,h1.name,COUNT(C2.challenge_id) AS other_counts FROM Hackers h1 JOIN Challenges C2 ON h1.hacker_id = c2.hacker_id GROUP BY h1.hacker_id,h1.name) temp2
GROUP BY other_counts
HAVING COUNT(other_counts) = 1)
ORDER BY total_count DESC,H.hacker_id;
