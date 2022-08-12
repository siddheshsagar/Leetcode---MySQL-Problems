# Leetcode Problem 1050 : https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

SELECT actor_id, director_id FROM ActorDirector GROUP BY actor_id,director_id HAVING COUNT(director_id) > 2;
