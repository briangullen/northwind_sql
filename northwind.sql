-- Question 1
SELECT * FROM customers;

-- Question 2
SELECT DISTINCT country FROM customers;

-- Question 3
SELECT * FROM customers WHERE customer_id LIKE 'BL%';

-- Question 4
SELECT * FROM customers LIMIT 100;

-- Question 5
SELECT * FROM customers WHERE postal_code IN ('1010', '3012', '12209', '05023');

-- Question 6
SELECT * FROM orders WHERE ship_region IS NOT NULL;

-- Question 7
SELECT * FROM customers ORDER BY country, city;

-- Question 8
INSERT INTO customers(customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax)
VALUES('GCDAT', 'GC Data', 'John Doe', 'Director', '123 lane', 'Detroit', 'NA', '48187', 'USA', '(313) 123-4564', '(313) 456-7890');

-- Question 9
UPDATE orders SET ship_region='EuroZone' WHERE ship_country='France';

-- Question 10
DELETE FROM order_details WHERE quantity=1;

-- Question 11
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details;

-- Question 12
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details GROUP BY order_id;

-- Question 13
SELECT customer_id FROM orders WHERE order_id=10290;

-- Question 14
SELECT * FROM orders JOIN customers ON orders.customer_id = customers.customer_id;
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id = customers.customer_id;
SELECT * FROM orders RIGHT JOIN customers ON orders.customer_id = customers.customer_id;

-- Question 15
SELECT orders.ship_city, orders.ship_country FROM orders
JOIN employees ON orders.employee_id = employees.employee_id
WHERE employees.city='London';

-- Question 16
SELECT ship_name,orders.order_id,order_details.product_id,discontinued
FROM order_details JOIN orders ON orders.order_id=order_details.order_id
JOIN products ON order_details.product_id=products.product_id
WHERE discontinued=1;

-- Question 17
SELECT first_name FROM employees WHERE reports_to IS NULL;

-- Question 18
SELECT first_name FROM employees WHERE reports_to=2;

-- Question 19
CREATE INDEX customer_id_index ON orders (customer_id);



