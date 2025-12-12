    SELECT
        title,
        rating,
        length,
        description
    FROM films
    WHERE title ILIKE '%love%';