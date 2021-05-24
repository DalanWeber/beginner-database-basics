 -- //Table - Person //

CREATE TABLE person ( id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50), age INT, height_cm FLOAT, city TEXT, favorite_color TEXT );

INSERT INTO person (name,age,height_cm,city,favorite_color) values ('dalan',27,170,'midvale','blue'), ('bob',37,180,'kearns','green'), ('Kam',33,165,'Springville','Gray'), ('Justin',30,160,'murray','orange'), ('Keny',29,175,'price','red');

SELECT  *
FROM person
ORDER BY height_cm desc;

SELECT  *
FROM person
ORDER BY height_cm asc;

SELECT  *
FROM person
ORDER BY age desc; select*
FROM person
WHERE age > 20; 

SELECT  *
FROM person
WHERE age = 18; 

SELECT  *
FROM person
WHERE age > 30 
AND age < 20; 

SELECT  *
FROM person
WHERE age != 27; 

SELECT  *
FROM person
WHERE favorite_color not like 'red'; 

SELECT  *
FROM person
WHERE favorite_color not like 'red' 
AND favorite_color not like 'blue'; 

SELECT  *
FROM person
WHERE favorite_color like 'orange' or favorite_color like 'green'; 

SELECT  *
FROM person
WHERE favorite_color IN ('orange','green','blue') 
SELECT  *
FROM person
WHERE favorite_color IN ('yellow','purple'); -- // TABLE Records// 

CREATE TABLE orders ( order_id serial primary key, person_id int, product_name VARCHAR(50), product_price float, quanity int )

INSERT INTO orders (person_id,product_name,product_price,quanity) values (15,'Shout',15.15,2), (19,'Let it all Out',27.25,1), (87,'These are the things',30.45,3), (36,'We can do without',20.00,5), (274,'Come on, Im talking to you',60.00,6);

SELECT  *
FROM orders;

SELECT  SUM(quanity)
FROM orders;

SELECT  SUM(product_price)
FROM orders;

SELECT  SUM(product_price)
FROM orders
WHERE person_id = 15 

INSERT INTO ARTIST (name) VALUES ('Raycon'), ('JAYZE'), ('Yikers');

SELECT  *
FROM artist
ORDER BY name desc
LIMIT 10;

SELECT  *
FROM artist
ORDER BY name asc
LIMIT 5;

SELECT  *
FROM artist
WHERE name like 'Black%' ; 

SELECT  *
FROM artist
WHERE name like '%Black%' ; 

SELECT  COUNT(invoice_id)
FROM invoice
WHERE billing_country like 'USA' ; 

SELECT  *
FROM invoice
ORDER BY total desc
LIMIT 1;

SELECT  *
FROM invoice
ORDER BY total asc
LIMIT 1;

SELECT  *
FROM invoice
WHERE total > 5; 

SELECT  *
FROM invoice
WHERE total < 5; 

SELECT  COUNT(invoice_id)
FROM invoice
WHERE billing_state IN ('CA','TX','AZ'); 

SELECT  AVG(total)
FROM invoice;

SELECT  SUM(total)
FROM invoice; 


SELECT  SUM(total)
FROM invoice; 