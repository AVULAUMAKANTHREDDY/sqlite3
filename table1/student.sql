-- creating student table with name,date-of-birth,adress
CREATE TABLE student(
    name VARCHAR(200),
    date_0f_birth DATE,
    address TEXT
);


PRAGMA TABLE_INFO(student);


INSERT INTO
    student(name,date_0f_birth,address)
VALUES
    ('ravi','1995-10-15','guntur'),
    ('gopi','1997-06-07','piduguralla');


SELECT*FROM student


INSERT INTO
    student(name,date_0f_birth,address)
VALUES
    ('venu','1996-08-22','rajupalem');


SELECT*FROM student



UPDATE
    student
SET
    name = 'ganesh'
WHERE
    name = 'venu';


SELECT*FROM student


ALTER TABLE
    student
ADD
    scholarship_amount INT;


PRAGMA TABLE_INFO(student);


SELECT*FROM student


UPDATE
    student
SET
    scholarship_amount =15000;


SELECT*FROM student





UPDATE
    student
SET
    scholarship_amount = 25000
WHERE
    name = 'ganesh';

SELECT*FROM student


ALTER TABLE
    student
ADD
    id INT,
    sports TEXT;



PRAGMA TABLE_INFO(student);



SELECT*FROM student



UPDATE
    student
SET
    id =1,
    id =2,
    id =3,
    sports = 'criclet',
    sports = 'hocky',
    sports = 'running'

WHERE
    name = 'ravi',
    name = 'gopi',
    name = 'ganesh';

SELECT*FROM student

ALTER TABLE
student RENAME COLUMN id TO id_num;
  
SELECT*FROM student

