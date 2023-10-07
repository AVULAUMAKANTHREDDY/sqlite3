CREATE TABLE products(
    Name VARCHAR(200),
    Category VARCHAR(200),
    Sub_category VARCHAR(200),
    Price INT,
    Brand VARCHAR(200),
    Rating FLOAT    
);

PRAGMA TABLE_INFO(products);

INSERT INTO products(Name,Category,Sub_category,Price,Brand,Rating)
VALUES
    ('Magic_Cookies','food','Cookies',147,'unibic',4.2),
    ('Factorie_Cookies','food','Cookies',855,'unibic',4.7),
    ('Cashew_Badam','food','Cookies',49,'unibic',4.8),
    ('Fruits&Nuts_cookies','food','Cookies',147,'unibic',4.2),
    ('Straaberry_Wrafers','food','Wrafers',57,'unibic',4.0),
    ('Choco_Kiss_filled_Cookies','food','Cookies',78,'unibic',4.2),
    ('Hazelnut_Wafers','food','Wrafers',72,'unibic',4.1),
    ('Treat_craem_wafers','food','Wrafers',54,'unibic',4.0),
    ('NutriChoico','food','Cookies',33,'Britaneya',4.4),
    ('GoodDay','food','Cookies',86,'Britaneya',4.6),
    ('NutriChoico_HighFiber','food','Cookies',55,'Britaneya',4.2),
    ('Tiger_Krunch','food','Cookies',149,'Britaneya',4.6),
    ('Marie_Gold','food','Biscuits',67,'Britaneya',4.5),
    ('Vita_Gold_marie','food','Biscuits',40,'Britaneya',4.5),
    ('Tiger','food','Biscuits',32,'Britaneya',4.7),
    ('Milk_Bikis','food','Biscuits',45,'Britaneya',4.7),
    ('iPhone_13','Electronics','Phone',56999,'Apple',4.5),
    ('iPhone_14','Electronics','Phone',67999,'Apple',4.7),
    ('iPhone_11','Electronics','Phone',37999,'Apple',4.6),
    ('Macbook_Air_M1','Electronics','Laptop',81990,'Apple',4.2),
    ('Macbook_Air_M2','Electronics','Laptop',107910,'Apple',4.5),
    ('Macbook_Air_M2_Pro','Electronics','Laptop',229990,'Apple',4.6),
    ('Vivo_V29','Electronics','Phone',26999,'Vivo',4.2),
    ('Vivo_T2x','Electronics','Phone',12999,'Vivo',4.0),
    ('Vivo_V27','Electronics','Phone',32999,'Vivo',4.1),
    ('Motorola_g32','Electronics','Phone',11999,'Moto',4.6),
    ('Motorola_g14','Electronics','Phone',9999,'Moto',3.9),
    ('Motorola_g13','Electronics','Phone',9999,'Moto',3.4),
    ('Samsung_Galaxy','Electronics','Phone',34564,'Samsung',4.5),
    ('Samsung_Galaxy','Electronics','Phone',68974,'Samsung',4.6),
    ('Samsung_Galaxy','Electronics','Phone',34567,'Samsung',4.7),
    ('Samsung_Galaxy_Book2','Electronics','Laptop',61990,'Samsung',4.3),
    ('Samsung_Galaxy_Book3','Electronics','Laptop',83490,'Samsung',4.0),
    ('Samsung_Galaxy_Book_go','Electronics','Laptop',28190,'Samsung',3.8),
    ('boAt_Smart_call','Electronics','Smart_Watches',1799,'BoAt',4.6),
    ('boAt_Wave_Infinity','Electronics','Smart_Watches',2049,'BoAt',4.7),
    ('APPLE_Watch_Se','Electronics','Smart_Watches',29990,'Apple',4.7),
    ('APPLE_Watch_Ultra','Electronics','Smart_Watches',82999,'Apple',4.8),
    ('Noise_ColorFit_Pro_1','Electronics','Smart_Watches',2999,'Noise',4.5),
    ('Noise_ColorFit_Pro_2','Electronics','Smart_Watches',1999,'Noise',4.7),
    ('realme_Watch_2','Electronics','Smart_Watches',1999,'realme',4.8),
    ('realme_Watch_3','Electronics','Smart_Watches',3499,'realme',4.3),
    ('Men_Slim_Fit','Clothing','Shirts',399,'Allen_Solly',4.3),
    ('Men_Slim_Fit','Clothing','Shirts',389,'Arrow',4.6),
    ('Men_Slim_Fit','Clothing','Shirts',379,'Blackberry',4.2),
    ('Men_Regular_Fit','Clothing','Shirts',499,'Allen_Solly',4.3),
    ('Men_Regular_Fit','Clothing','Shirts',599,'Arrow',4.7),
    ('Men_Regular_Fit','Clothing','Shirts',999,'Blackberry',4.9),
    ('Men_Regular_Fit','Clothing','Pants',345,'Allen_Solly',4.3),
    ('Women_Regular_Fit','Clothing','Pants',456,'Arrow',4.0),
    ('Women_Regular_Fit','Clothing','Pants',654,'Blackberry',4.2),
    ('Solis_men_Black','Clothing','Shorts',499,'Allen_Solly',4.3),
    ('Solis_men_Blue','Clothing','Shorts',499,'Arrow',4.5),
    ('Solis_men_Red','Clothing','Shorts',499,'Blackberry',4.0),
    ('Casual_Regular','Clothing','Tops',334,'Allen_Solly',4.3),
    ('Casual_Puff','Clothing','Tops',229,'Arrow',4.8),
    ('Casual_Roll_Up','Clothing','Tops',331,'Blackberry',4.1) 


SELECT*FROM products;


SELECT*FROM products
WHERE Category ='food';


SELECT*FROM products
WHERE Category<>'food';
  

-- task_01

SELECT*FROM products
WHERE Rating >4.5;

SELECT*FROM products
WHERE Price>1000;

SELECT*FROM products
WHERE Brand = 'Apple';

SELECT*FROM products
WHERE Category <>'Electronics';


-- Task_02

SELECT*FROM products
WHERE Category LIKE 'food';

SELECT*FROM products
WHERE name LIKE '%Cookies';

SELECT*FROM products
WHERE name LIKE '%sung%';

SELECT*FROM products
WHERE name LIKE '%3';

SELECT*FROM products
WHERE Category LIKE '____';


-- Task_3

SELECT*FROM products
WHERE price < 200000 AND Brand = 'Apple';

SELECT*FROM products
WHERE Rating > 4.5 AND Brand = 'Britaneya';

SELECT*FROM products
WHERE Category <>'food';

-- Test_4

SELECT*FROM products
WHERE  NOT Name LIKE'%Re%' AND Category='Clothing';

SELECT*FROM products
WHERE Category='Clothing' AND Name LIKE '%Fit';


-- *****
SELECT*FROM products
WHERE NOT Name LIKE '%Fit%' AND  (Brand ='Allen_Solly' OR Brand ='Arrow');


SELECT*FROM products
WHERE (Category='food' AND Name LIKE '%co%') OR  Price <1000 ;


-- Task_05

SELECT*FROM products
WHERE Brand In ('Apple', 'Vivo');


SELECT
    Name,Price,Brand
FROM products
WHERE Price BETWEEN 1000 AND 70000;


-- Task-06
SELECT*FROM products
WHERE Rating BETWEEN 4.3 AND 4.8;


-- Task_07

SELECT*FROM products
WHERE Brand='Apple' 
ORDER BY
 Rating DESC,   
 Name ASC;

-- Task_08

SELECT 
    DISTINCT Brand 
FROM 
    products
ORDER BY
    Brand ASC;


-- Task_09

SELECT 
    Name,Price,Rating,Brand
FROM 
    products
WHERE
    Brand = 'Apple'
ORDER BY
    Rating ASC
LIMIT 3;

-- Task_10

SELECT 
    Name,Price,Rating,Brand
FROM 
    products
ORDER BY
    Rating ASC
LIMIT 5
OFFSET 1;