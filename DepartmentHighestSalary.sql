# Leetcode Problem 184 : https://leetcode.com/problems/department-highest-salary/

SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e JOIN Department d
WHERE e.departmentId = d.id AND (departmentId,salary) IN 
(SELECT e1.departmentId, MAX(e1.salary) FROM Employee e1 GROUP BY e1.departmentId); 
