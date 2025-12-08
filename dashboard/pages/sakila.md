# Exploring Sakila database

## Films in Sakila

```sql films
select
    title,
    description,
    rating,
    length,
    release_year
from sakila.film;
```

## Films longer than 180 minutes

```sql long_films
select title, length
from long_films;
```
