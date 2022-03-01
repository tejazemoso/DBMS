SELECT  customer.customer_id,customer.first_name, customer.last_name, country.country FROM customer 
INNER JOIN address ON customer.address_id=address.address_id 
INNER JOIN  city ON address.city_id=city.city_id 
INNER JOIN country ON city.country_id=country.country_id 
INNER JOIN rental ON rental.customer_id=customer.customer_id 
INNER JOIN inventory ON inventory.inventory_id=rental.inventory_id 
INNER JOIN film_category ON film_category.film_id=inventory.film_id 
INNER JOIN film_actor ON film_actor.film_id=inventory.film_id 
INNER JOIN actor ON actor.actor_id=film_actor.actor_id 
WHERE country.country='canada' AND actor.first_name='NICK' AND actor.last_name='WAHLBERG' order by customer.customer_id ASC;
