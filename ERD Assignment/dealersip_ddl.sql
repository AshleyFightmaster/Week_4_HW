SELECT *
FROM employees;

CREATE TABLE employees(
    sales_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE cars(
    serial_number SERIAL PRIMARY KEY,
    year INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    price INTEGER,
    sales_id INTEGER,
    FOREIGN KEY (sales_id) REFERENCES employees(sales_id),
    customer_id INTEGER
);

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

ALTER TABLE cars
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

CREATE TABLE mechanics(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE garage(
    service_ticket SERIAL PRIMARY KEY,
    services VARCHAR(100),
    price INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    serial_number INTEGER
);

CREATE TABLE invoices(
    invoice_number SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    service_ticket INTEGER,
    FOREIGN KEY(service_ticket) REFERENCES garage(service_ticket),
    sales_id INTEGER,
    FOREIGN KEY(sales_id) REFERENCES employees(sales_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    total INTEGER
);


SELECT *
FROM employees;

SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM mechanics;

SELECT *
FROM garage;

SELECT *
FROM invoices;