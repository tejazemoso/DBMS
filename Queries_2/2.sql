SELECT * FROM store;  
SELECT * FROM staff ;
SELECT  * FROM category ; 

SELECT count(film_category.film_id)as No_Stf_Movie FROM film_category
INNER JOIN category ON film_category.category_id=category.category_id
INNER JOIN inventory ON film_category.film_id=inventory.film_id
INNER JOIN store ON store.store_id=inventory.store_id
INNER JOIN staff ON staff.staff_id=store.manager_staff_id
WHERE category.name='sci-fi' AND staff.first_name='jon' AND staff.last_name='Stephens';
