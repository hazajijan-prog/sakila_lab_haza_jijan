SELECT
    ci.city,
    COUNT(r.rental_id) AS num_rentals
FROM staging.city ci
JOIN staging.address a 
    ON ci.city_id = a.city_id
JOIN staging.customer c 
    ON a.address_id = c.address_id
JOIN staging.rental r 
    ON c.customer_id = r.customer_id
GROUP BY ci.city
ORDER BY num_rentals DESC
LIMIT 10;
