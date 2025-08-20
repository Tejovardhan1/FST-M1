
--Activity 1
CREATE TABLE salesman (salesman_id int Primary KEY,salesman_name varchar(20),salesman_city varchar(20),commission int);
DESCRIBE salesman;

--Activity 2
INSERT INTO salesman VALUES(5001, 'James Hoog', 'New York', 15);
INSERT INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13);
-- Insert multiple rows at once
INSERT ALL
INTO salesman VALUES(5005, 'Pit Alex', 'London', 11)
INO salesman VALUES(5007, 'Paul Adam', 'Rome', 13)
INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12)
SELECT 1 FROM DUAL;
-- View data from all columns
SELECT  FROM salesman;

--Activity 3 
-- Show data from the salesman_id and city columns
SELECT salesman_id, salesman_city FROM salesman;
-- Show data of salesman from Paris
SELECT  FROM salesman WHERE salesman_city='Paris';
-- Show salesman_id and commission of Paul Adam
SELECT salesman_id, commission FROM salesman WHERE salesman_name='Paul Adam';

--Activity 4
-- Add the grade column
ALTER TABLE salesman ADD grade int;
-- Update the values in the grade column
UPDATE salesman SET grade=100;
-- Display data
SELECT  FROM salesman;

--Activity 5
-- Update the grade score of salesmen from Rome to 200.
UPDATE salesman SET grade=200 WHERE salesman_city='Rome';
-- Update the grade score of James Hoog to 300.
UPDATE salesman SET grade=300 WHERE salesman_name='James Hoog';
-- Update the name McLyon to Pierre.
UPDATE salesman SET salesman_name='Pierre' WHERE salesman_name='McLyon';
-- Display modified data
SELECT  FROM salesman;

--Activity 6
create table orders(
order_no int primary key, purchase_amount float, order_date date,
customer_id int, salesman_id int);
-- Add values to the table
INSERT ALL
INTO orders VALUES(70001, 150.5, TO_DATE('20121005', 'YYYYMMDD'), 3005, 5002)
INTO orders VALUES(70009, 270.65, TO_DATE('20120910', 'YYYYMMDD'), 3001, 5005)
INTO orders VALUES(70002, 65.26, TO_DATE('20121005', 'YYYYMMDD'), 3002, 5001)
INTO orders VALUES(70004, 110.5, TO_DATE('20120817', 'YYYYMMDD'), 3009, 5003)
INTO orders VALUES(70007, 948.5, TO_DATE('20120910', 'YYYYMMDD'), 3005, 5002)
INTO orders VALUES(70005, 2400.6, TO_DATE('20120727', 'YYYYMMDD'), 3007, 5001)
INTO orders VALUES(70008, 5760, TO_DATE('20120815', 'YYYYMMDD'), 3002, 5001)
INTO orders VALUES(70010, 1983.43, TO_DATE('20121010', 'YYYYMMDD'), 3004, 5006)
INTO orders VALUES(70003, 2480.4, TO_DATE('20121010', 'YYYYMMDD'), 3009, 5003)
INTO orders VALUES(70012, 250.45, TO_DATE('20120627', 'YYYYMMDD'), 3008, 5002)
INTO orders VALUES(70011, 75.29, TO_DATE('20120817', 'YYYYMMDD'), 3003, 5007)
INTO orders VALUES(70013, 3045.6, TO_DATE('20120425', 'YYYYMMDD'), 3002, 5001)
SELECT 1 FROM DUAL;
select  from orders;
--Activity 6
-- Get all salesman ids without any repeated values
select distinct salesman_id from orders;
-- Display the order number ordered by date in ascending order
select order_no, order_date from orders order by order_date;
-- Display the order number ordered by purchase amount in descending order
select order_no, purchase_amount from orders order by purchase_amount DESC;
-- Display the full data of orders that have purchase amount less than 500.
select  from orders where purchase_amount  500;
-- Display the full data of orders that have purchase amount between 1000 and 2000.
select  from orders where purchase_amount between 1000 and 2000;

--Activity 7

--Find the total purchase amount of all orders.
SELECT SUM(purchase_amount) FROM orders; 
--Find the average purchase amount of all orders.
SELECT AVG(purchase_amount) FROM orders; 
--Get the maximum purchase amount of all the orders.
SELECT MAX(purchase_amount) FROM orders; 
--Get the minimum purchase amount of all the orders.
SELECT MIN(purchase_amount) FROM orders; 
--Find the number of salesmen listed in the table.
SELECT COUNT(DISTINCT salesman_id) FROM orders; 

--Activity 8
-- Write an SQL statement to find the highest purchase amount ordered by the each customer with their ID and highest purchase amount.
SELECT customer_id, MAX(purchase_amount) AS Max Amount FROM orders GROUP BY customer_id;
-- Write an SQL statement to find the highest purchase amount on '2012-08-17' for each salesman with their ID.
SELECT salesman_id, order_date, MAX(purchase_amount) AS Max Amount FROM orders 
WHERE order_date=To_DATE('20120817', 'YYYYMMDD') GROUP BY salesman_id, order_date;
-- Write an SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount within the list 2030, 3450, 5760, and 6000.
select ORDER_NO,ORDER_DATE,CUSTOMER_ID,MAX(PURCHASE_AMOUNT) from orders 
group by CUSTOMER_ID,ORDER_NO,ORDER_DATE
having MAX(PURCHASE_AMOUNT) IN(2030,3050,5760,6000);


