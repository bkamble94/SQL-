/*#########################################################
Second Highesh Salary Using Subqueries
#########################################################*/  

SELECT name, salary  
FROM employee  
WHERE salary = (  
    SELECT MAX(salary)  
    FROM employee  
    WHERE salary < (SELECT MAX(salary) FROM employee)  
);

/*#########################################################
Second Highesh Salary Using LIMIT 
#########################################################*/  

select *from employee 
group by salary 
order by  salary desc limit 1,1;

/*#########################################################
Second Highesh Salary Using Common Table Expressions (CTEs)
#########################################################*/  
WITH RankedSalaries AS (  
    SELECT name, salary,  
           DENSE_RANK() OVER (ORDER BY salary DESC) AS Rank  
    FROM employee  
)  
SELECT name, salary  
FROM RankedSalaries  
WHERE Rank = 2;  
