-- Query 1
-- get all employee data
SELECT * FROM Employee;

-- Query 2
-- get name and salary
SELECT name, salary FROM Employee;

-- Query 3
-- employees older than 30
SELECT * FROM Employee WHERE age > 30;

-- Query 4
-- all department names
SELECT name FROM Department;

-- Query 5
-- employees in IT department
SELECT * 
FROM Employee e
JOIN Department d 
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- Query 6
-- names starting with J
SELECT * FROM Employee WHERE name LIKE 'J%';

-- Query 7
-- names ending with e
SELECT * FROM Employee WHERE name LIKE '%e';

-- Query 8
-- names containing a
SELECT * FROM Employee WHERE name LIKE '%a%';

-- Query 9
-- names length is 9
SELECT * FROM Employee WHERE LENGTH(name) = 9;

-- Query 10
-- second letter is o
SELECT * FROM Employee WHERE name LIKE '_o%';

-- Query 11
-- hired in 2020
SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;

-- Query 12
-- hired in january
SELECT * FROM Employee WHERE MONTH(hire_date) = 1;

-- Query 13
-- hired before 2019
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

-- Query 14
-- hired after march 2021
SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

-- Query 15
-- hired in last 2 years
SELECT * 
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- Query 16
-- total salary
SELECT SUM(salary) FROM Employee;

-- Query 17
-- average salary
SELECT AVG(salary) FROM Employee;

-- Query 18
-- minimum salary
SELECT MIN(salary) FROM Employee;

-- Query 19
-- count employees per department
SELECT department_id, COUNT(*) 
FROM Employee
GROUP BY department_id;

-- Query 20
-- avg salary per department
SELECT department_id, AVG(salary) 
FROM Employee
GROUP BY department_id;

-- Query 21
-- total salary per department
SELECT department_id, SUM(salary)
FROM Employee
GROUP BY department_id;

-- Query 22
-- avg age per department
SELECT department_id, AVG(age)
FROM Employee
GROUP BY department_id;

-- Query 23
-- employees hired per year
SELECT YEAR(hire_date), COUNT(*)
FROM Employee
GROUP BY YEAR(hire_date);

-- Query 24
-- max salary per department
SELECT department_id, MAX(salary)
FROM Employee
GROUP BY department_id;

-- Query 25
-- department with highest avg salary
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC
LIMIT 1;

-- Query 26
-- departments with more than 2 employees
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Query 27
-- departments avg salary > 55000
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Query 28
-- years with more than 1 hire
SELECT YEAR(hire_date)
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

-- Query 29
-- departments total salary < 100000
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

-- Query 30
-- departments max salary > 75000
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;

-- Query 31
-- order by salary
SELECT * FROM Employee ORDER BY salary;

-- Query 32
-- order by age desc
SELECT * FROM Employee ORDER BY age DESC;

-- Query 33
-- order by hire date
SELECT * FROM Employee ORDER BY hire_date;

-- Query 34
-- order by department and salary
SELECT * FROM Employee ORDER BY department_id, salary;

-- Query 35
-- departments by total salary
SELECT d.department_id, SUM(e.salary)
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.department_id
ORDER BY SUM(e.salary);

-- Query 36
-- employee with department name
SELECT e.name, d.name
FROM Employee e
JOIN Department d ON e.department_id = d.department_id;

-- Query 37
-- project with department
SELECT p.name, d.name
FROM Project p
JOIN Department d ON p.department_id = d.department_id;

-- Query 38
-- employee with project
SELECT e.name, p.name
FROM Employee e
JOIN Project p ON e.department_id = p.department_id;

-- Query 39
-- all employees with department
SELECT e.*, d.name
FROM Employee e
LEFT JOIN Department d ON e.department_id = d.department_id;

-- Query 40
-- all departments with employees
SELECT d.*, e.name
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id;

-- Query 41
-- employees not in any project
SELECT *
FROM Employee e
LEFT JOIN Project p ON e.department_id = p.department_id
WHERE p.project_id IS NULL;

-- Query 42
-- employees with number of projects
SELECT e.name, COUNT(p.project_id)
FROM Employee e
JOIN Project p ON e.department_id = p.department_id
GROUP BY e.name;

-- Query 43
-- departments with no employees
SELECT d.*
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- Query 44
-- same department as John Doe
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id 
    FROM Employee 
    WHERE name = 'John Doe'
);

-- Query 45
-- department with highest avg salary
SELECT d.name
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY AVG(e.salary) DESC
LIMIT 1;

-- Query 46
-- employee with highest salary
SELECT *
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Query 47
-- employees above avg salary
SELECT *
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Query 48
-- second highest salary
SELECT DISTINCT salary
FROM Employee e1
WHERE 1 = (
    SELECT COUNT(DISTINCT salary)
    FROM Employee e2
    WHERE e2.salary > e1.salary
);

-- Query 49
-- department with most employees
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Query 50
-- employees earning more than dept avg
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Query 51
-- 3rd highest salary
SELECT DISTINCT salary
FROM Employee e1
WHERE 2 = (
    SELECT COUNT(DISTINCT salary)
    FROM Employee e2
    WHERE e2.salary > e1.salary
);

-- Query 52
-- employees older than HR employees
SELECT *
FROM Employee
WHERE age > ALL (
    SELECT age
    FROM Employee
    WHERE department_id = (
        SELECT department_id FROM Department WHERE name = 'HR'
    )
);

-- Query 53
-- departments avg salary > 55000
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Query 54
-- employees in departments with 2 projects
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(*) >= 2
);

-- Query 55
-- same hire date as Jane Smith
SELECT *
FROM Employee
WHERE hire_date = (
    SELECT hire_date FROM Employee WHERE name = 'Jane Smith'
);

-- Query 56
-- total salary in 2020
SELECT SUM(salary)
FROM Employee
WHERE YEAR(hire_date) = 2020;

-- Query 57
-- avg salary per department desc
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC;

-- Query 58
-- dept with >1 employee and avg >55000
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;

-- Query 59
-- hired last 2 years order by date
SELECT *
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY hire_date;

-- Query 60
-- count and avg salary where dept >2 employees
SELECT department_id, COUNT(*), AVG(salary)
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Query 61
-- name and salary above dept avg
SELECT name, salary
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Query 62
-- same hire date as oldest employee
SELECT *
FROM Employee
WHERE hire_date = (SELECT MIN(hire_date) FROM Employee);

-- Query 63
-- department with project count
SELECT d.name, COUNT(p.project_id)
FROM Department d
LEFT JOIN Project p ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY COUNT(p.project_id);

-- Query 64
-- highest salary employee per department
SELECT *
FROM Employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Query 65
-- employees older than dept avg age
SELECT name, salary
FROM Employee e
WHERE age > (
    SELECT AVG(age)
    FROM Employee
    WHERE department_id = e.department_id
);
