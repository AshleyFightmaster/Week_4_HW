-- 1. List all customers who live in Texas (use JOINs)
SELECT *
FROM address;

SELECT first_name, last_name, address.district
FROM customer
RIGHT JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
SELECT first_name, last_name, payment.amount
FROM customer
LEFT JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99
ORDER BY amount DESC;

-- 3.Show all customers names who have made payments over &175 (use subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 175
    ORDER BY SUM(amount) DESC
);

-- 4. List all customers that live in Nepal (use the city table)
SELECT *
FROM country;
SELECT *
FROM city;

SELECT first_name, last_name, country_id
FROM (
    SELECT first_name, last_name, country_id
    FROM customer
    INNER JOIN address
    ON customer.address_id = address.address_id
    INNER JOIN city
    ON address.city_id = city.city_id
) AS customers_in_nepal
WHERE country_id = '66';

-- 5. Which staff member had the most transactions?

SELECT *
FROM payment;

SELECT first_name, last_name, COUNT(amount)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(amount) DESC;

-- 6. How many movies of each rating are there?
SELECT *
FROM film;

SELECT COUNT(rating)
FROM film
WHERE rating = 'G';

SELECT COUNT(rating)
FROM film
WHERE rating = 'PG';

SELECT COUNT(rating)
FROM film
WHERE rating = 'PG-13';

SELECT COUNT(rating)
FROM film
WHERE rating = 'R';

SELECT COUNT(rating)
FROM film
WHERE rating = 'NC-17';

--7 Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT first_name, last_name, amount
FROM (
    SELECT first_name, last_name, amount
    FROM customer
    INNER JOIN payment
    ON customer.customer_id = payment.customer_id
) AS customer_payments
WHERE amount > 6.99
ORDER BY amount;

-- 8. How many free rentals did our store give away?
SELECT COUNT(amount)
FROM payment
WHERE amount = 0