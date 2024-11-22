CREATE TABLE customers (id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50));
CREATE TABLE orders (id INT PRIMARY KEY, customer_id INT, order_date DATE); 

INSERT INTO customers VALUES (1, 'Raj', 'Verma'), (2, 'Sneha', 'Rao');

INSERT INTO orders VALUES (1, 1, '2023-05-12'), (2, 2, '2023-05-14');


/*
List all orders along with customer names from the orders and customers tables
*/


SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS


SELECT C.FIRST_NAME,
       C.LAST_NAME,
	   CONCAT(C.FIRST_NAME, ' ', C.LAST_NAME) AS FULL_NAME,    
       O.*
FROM CUSTOMERS C
JOIN ORDERS O
ON C.ID=O.ID