SELECT
    c.first_name || ' ' || c.last_name AS name,
    SUM(p.amount) AS total_spent
FROM staging.customer c
JOIN staging.rental r ON c.customer_id = r.customer_id
JOIN staging.payment p ON r.rental_id = p.rental_id
GROUP BY name
ORDER BY total_spent DESC
LIMIT 5;
