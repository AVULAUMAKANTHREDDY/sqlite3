CREATE TABLE player_match_details (
 name VARCHAR(250),
 match VARCHAR(10),
 score INTEGER,
 fours INTEGER,
 sixes INTEGER,
 year INTEGER
);



PRAGMA TABLE_INFO(player_match_details);


INSERT INTO player_match_details(name,match,score,fours,sixes,year)
VALUES
("Joesph","SRH vs CSK",44,2,4,2012),
("Lokesh","DC vs DD",99,2,13,2013),
("David","SRH vs CSK",96,1,13,2014),
("Joseph","SRH vs CSK",10,1,0,2012),
("Shyam","MI vs RCB",75,2,9,2011),
("Stark","MI vs DC",75,2,9,2012),
("Ram","RR vs MI",84,1,11,2013),
("Ramesh","CSK vs RR",9,0,0,2010),
("Ram","RR vs DC",75,2,9,2011),
("Joseph","SRH vs MI",30,5,0,2012),
("Lokesh","DC vs RR",87,2,11,2013),
("Ram","RR vs SRH",34,4,0,2011),
("David","SRH vs MI",9,0,0,2014)

SELECT
 SUM(score)
FROM
 player_match_details
WHERE
 name = "Ram";

SELECT
 MAX(score),
 MIN(score)
FROM
 player_match_details
WHERE
 year = 2011;



