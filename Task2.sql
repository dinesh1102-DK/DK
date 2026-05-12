use dineshdb;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    amount DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES
(1, 'Arun', 'Chennai'),
(2, 'Priya', 'Madurai'),
(3, 'Rahul', 'Coimbatore'),
(4, 'Sneha', 'Salem'),
(5, 'Kavin', 'Trichy');

-- Insert 5 orders
INSERT INTO orders VALUES
(101, 'Laptop', 55000, 1),
(102, 'Mobile', 20000, 2),
(103, 'Headphones', 3000, 1),
(104, 'Keyboard', 1500, 3),
(105, 'Mouse', 800, 2);


SELECT 
    customers.customer_name,
    orders.product_name,
    orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT 
    customers.customer_name,
    orders.product_name,
    orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;