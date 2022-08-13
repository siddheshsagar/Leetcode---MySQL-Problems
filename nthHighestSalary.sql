# Leetcode Problem 177 : https://leetcode.com/problems/nth-highest-salary/
# My Leetcode Solution link : https://leetcode.com/problems/nth-highest-salary/discuss/2419363/3-different-solutions-(IF-CASES)-%2B-subselect-Limit%2BOffset
# IF + Subselect =>

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN ( 
      SELECT IF(COUNT(sal) >= N, MIN(sal), NULL)
      FROM (SELECT DISTINCT salary AS sal FROM Employee ORDER BY salary DESC LIMIT N) AS thisDoesnotMatter
  );
END

# Subselect with CASES =>

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    RETURN (
        SELECT
        CASE 
            WHEN COUNT(sal) >= N THEN MIN(sal)
            ELSE NULL
        END
        FROM (SELECT DISTINCT salary AS sal FROM Employee ORDER BY salary DESC LIMIT N) AS thisDoesnotMatter
    );
END

# With LIMIT + OFFSET =>

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
      SELECT DISTINCT(salary) from Employee order by salary DESC
      LIMIT 1 OFFSET N
  );
END
