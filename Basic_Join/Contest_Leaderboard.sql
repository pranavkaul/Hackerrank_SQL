SELECT h.hacker_id, h.name, sum(max_score.score) AS total_score FROM 
Hackers H JOIN (SELECT hacker_id, MAX(Score) as score FROM Submissions GROUP BY hacker_id,challenge_id ORDER BY score DESC) max_score ON h.hacker_id = max_score.hacker_id 
GROUP BY h.hacker_id,h.name
HAVING total_score > 0
ORDER BY total_score DESC,h.hacker_id;
