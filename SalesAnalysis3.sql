# Leetcode Problem 1084 : https://leetcode.com/problems/sales-analysis-iii/submissions/

SELECT p.product_id, p.product_name 
FROM Product p JOIN Sales s 
ON p.product_id = s.product_id
GROUP BY s.product_id, p.product_name
HAVING min(s.sale_date) >= '2019-01-01'AND max(s.sale_date) <= '2019-03-31';
