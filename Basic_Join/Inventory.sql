SELECT w.id, wp.age, w.coins_needed, w.power FROM wands w join wands_property wp ON (w.code = wp.code)
WHERE wp.is_evil = '0' AND w.coins_needed = (SELECT MIN(w1.coins_needed) FROM wands w1 join wands_property wp1 ON w1.code = wp1.code
WHERE w1.power = w.power AND wp1.age = wp.age) ORDER BY w.power DESC;
