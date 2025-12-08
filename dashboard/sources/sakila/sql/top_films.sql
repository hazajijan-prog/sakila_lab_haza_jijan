SELECT 
    f.film_id,
    f.title,
    COUNT(r.rental_id) AS num_rentals
FROM staging.film f
JOIN staging.inventory i 
    ON f.film_id = i.film_id
JOIN staging.rental r 
    ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY num_rentals DESC
LIMIT 5;