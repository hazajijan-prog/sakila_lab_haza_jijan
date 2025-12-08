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
## Films containing "love" in the title 

```sql love_films
select 
    title,
    description,
    rating,
    length,
    release_year
from love_films;
```
