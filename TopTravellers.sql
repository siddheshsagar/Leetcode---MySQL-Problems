# Leetcode Problem 1407 : https://leetcode.com/problems/top-travellers/submissions/

SELECT u.name, 
IF(sum(r.distance) IS NULL, 0, sum(r.distance)) AS travelled_distance 
FROM Users u LEFT JOIN Rides r ON u.id = r.user_id 
GROUP BY r.user_id 
ORDER BY travelled_distance DESC, u.name;
