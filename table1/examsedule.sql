CREATE TABLE exam_schedule(
    name VARCHAR(200),
    exam_date_time DATE,
    duration_in_sec TIME,
    pass_percentage FLOAT
);

PRAGMA TABLE_INFO(exam_schedule);

INSERT INTO
    exam_schedule(name,exam_date_time,duration_in_sec,pass_percentage)
VALUES
    ('ravi','2023-09-07','10-15-20',77.2),
    ('gopi','2023-09-07','10-15-20',65.3);

SELECT*FROM exam_schedule


INSERT INTO
    exam_schedule(name,exam_date_time,duration_in_sec,pass_percentage)
VALUES
    ('Venu','2023-09-07','10-15-20',39.3);

SELECT*FROM exam_schedule


UPDATE
    exam_schedule
SET
    name = 'ganesh'
WHERE
    name = 'venu';


ALTER TABLE
    exam_schedule
ADD
    course TEXT;


PRAGMA TABLE_INFO(exam_schedule);

SELECT*FROM exam_schedule

UPDATE
    exam_schedule
SET
    course = 'physics';

SELECT*FROM exam_schedule

UPDATE
    exam_schedule
SET
    course = 'math'

WHERE
    name = 'ganesh';