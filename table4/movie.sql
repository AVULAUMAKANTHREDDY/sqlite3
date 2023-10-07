CREATE TABLE movie(
    id INT,
    name VARCHAR(200),
    genre VARCHAR(200),
    budget_in_cr FLOAT,
    collection_in_cr FLOAT,
    rating FLOAT,
    release_date DATE
);

PRAGMA TABLE_INFIO(movie);

INSERT INTO
    movie (id,name,genre,budget_in_cr,collection_in_cr,rating,release_date)
VALUES
    (1,'bhaubali','action',150.0,600.0,4.9,'2016-06-21'),
    (2,'bhaubali2','action',400.0,1500.0,4.9,'2020-06-21'),
    (3,'maharshi','action',50.0,500.0,4.7,'2018-06-21'),
    (4,'pathan','action',150.0,700.0,4.5,'2023-06-21'),
    (5,'virupaksha','horror',90.0,150.0,4.5,'2023-05-06'),
    (6,'karthikeya2','adventure',30.0,200.0,4.6,'2022-09-05'),
    (7,'rrr','action',450.0,1300.0,4.9,'2022-06-21'),
    (8,'bro','drama',90.0,120.0,4.0,'2021-02-21'),
    (9,'ok ok','funny',60.0,100.0,2.5,'2016-06-21'),
    (10,'liger','action',50.0,10.0,2.0,'2016-06-21'),
    (11,'meg','sci/fi',200.0,500.0,3.1,'2019-04-28'),
    (12,'dhoni','sports',50.0,500.0,4.9,'2019-03-15'),
    (13,'dhangal','sports',500.0,1800.0,4.9,'2016-07-21'),
    (14,'the matrix','sci-fi',63.0,464.3,4.4,'1999-04-31'),
    (15,'inception','action',160.0,836.8,4.4,'2010-07-16'),
    (16,'the dark knight','drama',180.0,1005.0,4.5,'2008-07-18'),
    (17,'toy story 3','animation',200.0,1067.0,4.3,'2010-06-25')

SELECT*FROM movie;

SELECT
    name,release_date,
    strftime('%Y', release_date) AS 'release_year'
FROM
    movie;

SELECT
    count() AS noOFActionMovies
FROM
    movie
WHERE 
   ( genre = 'action' AND strftime('%Y', release_date) = '2016');

SELECT
    name
FROM
    movie
WHERE
    release_date BETWEEN strftime('%m', release_date) = '04' AND strftime('%m', release_date) = '06';

-- IN('01','02','03');