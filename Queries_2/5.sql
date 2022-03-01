SELECT count(film.rating) AS NO_OF_R_RATED_MOVIES FROM film
INNER JOIN inventory ON film.film_id=inventory.film_id
INNER JOIN rental ON rental.inventory_id=inventory.inventory_id
INNER JOIN customer ON customer.customer_id=rental.customer_id
WHERE customer.first_name='SUSAN' AND customer.last_name='WILSON' AND film.rating='R';
