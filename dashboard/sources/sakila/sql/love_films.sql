SELECT
    title,
    description,
    rating,
    length,
    release_year
FROM
    staging.film
WHERE
    title ILIKE '%love%';