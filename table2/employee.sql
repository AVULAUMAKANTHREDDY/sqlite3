CREATE TABLE employee(
    employee_id INT,
    name VARCHAR(200),
    salary INT
);

PRAGMA TABLE_INFO(employee);

INSERT INTO
   employee(employee_id,name,salary)
VALUES
    (1234,'ravi',24000),
    (1235,'gopi',30000);

SELECT*FROM employee


INSERT INTO
  employee(employee_id,name,salary)
VALUES
    (1234,'venu',24000);

SELECT *
FROM  
    employee


UPDATE
     employee
SET
    name = 'raju'
WHERE
    name = 'venu';

SELECT *
FROM  
employee


SELECT
    name,salary
FROM employee
WHERE 
name='raju';


