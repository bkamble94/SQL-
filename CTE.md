# CTE (Common Table Expressions)

Common Table Expressions (CTEs), is a powerful tool that simplifies complex SQL queries, improves readability, and enhances performance by defining temporary result sets that can be reused multiple times. Whether we’re working on aggregating data, analyzing large datasets, or building complex reports, understanding how to use the WITH clause in SQL can significantly improve your querying experience.

**Example:**
WITH temporaryTable (averageValue) AS (
    SELECT AVG(Salary)
    FROM Employee
)
        SELECT EmployeeID,Name, Salary 
        FROM Employee, temporaryTable 
        WHERE Employee.Salary > temporaryTable.averageValue;
![image](https://github.com/user-attachments/assets/af2d753b-17a8-40f9-ac8b-c9bd7d269265)
