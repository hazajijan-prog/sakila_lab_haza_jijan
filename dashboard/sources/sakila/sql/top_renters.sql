SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(r.rental_id) AS num_rentals,
    SUM(p.amount) AS total_spent
FROM staging.customer c
JOIN staging.rental r
    ON c.customer_id = r.customer_id
LEFT JOIN staging.payment p
    ON r.rental_id = p.rental_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY num_rentals DESC
LIMIT 10;
