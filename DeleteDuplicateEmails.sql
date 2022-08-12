# Leetcode Problem 196 : https://leetcode.com/problems/delete-duplicate-emails/

DELETE t1 FROM person t1
JOIN
person t2
WHERE
t1.email = t2.email  AND t1.id > t2.id;
