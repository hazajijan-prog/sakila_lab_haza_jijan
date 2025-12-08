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
select
    title,
    length
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

## Customers who rented the most movies

```sql top_renters
select
    customer_id,
    first_name,
    last_name,
    num_rentals
from top_renters;```

## Customers who spent the most money

```sql top_spenders
select
    customer_id,
    first_name,
    last_name,
    total_spent
from top_spenders;
```

## Cities that generate the most rentals

```sql top_cities
select
    city,
    num_rentals
from top_cities;
```

## Most rented films

```sql top_films
select
    film_id,
    title,
    num_rentals
from top_films;
```
