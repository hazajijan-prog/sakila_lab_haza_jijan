SELECT
    cat.name AS category,
    SUM(amount) AS total_revenue
FROM staging.category cat
JOIN staging.film_category fc ON cat.category_id = fc.category_id
JOIN staging.film f ON fc.film_id = f.film_id
JOIN staging.inventory i ON f.film_id = i.film_id
JOIN staging.rental r ON i.inventory_id = r.inventory_id
JOIN staging.payment p ON r.rental_id = p.rental_id
GROUP BY category
ORDER BY total_revenue DESC;