CREATE TABLE user(
      name VARCHAR(200),
      id INTEGER,
      age INTEGER,
      phnumber INTEGER
);

PRAGMA TABLE_INFO(user);


INSERT INTO
     USER(name,id,age,phnumber)
VALUES
      
      ('umaKANTH',123,23,9876543212),
      ('sarath KUMAR',123,23,9876543212),
      ('gopi REDDY',123,23,9876543212),
      ('srinu REDDY',123,23,9876543212),
      
SELECT * FROM USER

DELETE FROM
    user
WHERE
 name ='sarath';


DELETE FROM
    user
WHERE
 name ='gopi';



DELETE FROM
    user
WHERE
 name ='srinu';

UPDATE user
   SET age = 14
   WHERE
      name = 'gopi REDDY'


UPDATE user
   SET id = 2345
   WHERE
      name = 'gopi REDDY'



ALTER TABLE
     user
ADD review VARCHAR(50);


SELECT review
FROM 
    user
    WHERE
    name = 'umaKANTH'

UPDATE user
   SET review = 'GOOD'
   WHERE

      name = 'umaKANTH'

UPDATE user
   SET review = 'BAD'
   WHERE

      name = 'sarath KUMAR'
     
UPDATE user
   SET review = 'AVARAGE'
   WHERE

      name = 'VIRAT'
UPDATE user
   SET review = 'VERY BAD'
   WHERE

      name = 'srinu REDDY'


ALTER TABLE
user
RENAME
phnumber TO PNO

ALTER TABLE
user
DROP COLUMN review

ALTER TABLE
user
add COLUMN review

ALTER TABLE
user
ADD COLUMN user


DROP TABLE user

SELECT * FROM USER