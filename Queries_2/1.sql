SELECT count(film.film_id) as Count_of_Movies_with_deleted_scenes FROM film 
INNER JOIN film_category ON film.film_id=film_category.film_id
INNER JOIN category ON category.category_id=film_category.category_id
WHERE category.name='Documentary' AND film.special_features LIKE '%Deleted Scenes%';
