SELECT count(actor.actor_id) FROM film 
INNER JOIN film_actor ON film.film_id=film_actor.film_id 
INNER JOIN actor ON actor.actor_id=film_actor.actor_id 
WHERE actor.first_name='SEAN' AND actor.last_name='WILLIAMS';
