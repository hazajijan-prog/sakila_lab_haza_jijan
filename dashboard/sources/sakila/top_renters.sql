SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS full_name,
    COUNT(r.rental_id) AS num_rentals,
FROM
    staging.customer c
    JOIN staging.rental r ON c.customer_id = r.customer_id
    JOIN staging.payment p ON r.rental_id = p.rental_id
GROUP BY
    c.customer_id,
    full_name
ORDER BY
    num_rentals DESC
LIMIT
    5;