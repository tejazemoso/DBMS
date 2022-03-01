SELECT category.name, count(customer.customer_id) AS NO_OF_CUSTOMER FROM customer
INNER JOIN rental ON customer.customer_id=rental.customer_id
INNER JOIN inventory ON inventory.inventory_id=rental.inventory_id
INNER JOIN film_category ON film_category.film_id=inventory.film_id
INNER JOIN category ON category.category_id=film_category.category_id
WHERE customer.first_name='PATRICIA' AND customer.last_name='JOHNSON'
GROUP BY category.name ORDER BY count(customer.customer_id) DESC LIMIT 3;
