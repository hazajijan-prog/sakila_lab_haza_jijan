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
from sakila.long_films;
```

## Films containing "love" in the title 

```sql love_films
select 
    title,
    description,
    rating,
    length,
    release_year
from sakila.love_films;
```

## Customers who rented the most movies

```sql top_renters
select
    customer_id,
    full_name,
    num_rentals,
    total_spent
from top_renters;
```

## Customers who spent the most money

```sql top_spenders
select
    customer_id,
    full_name,
    total_spent
from sakila.top_spenders;
```

## Cities that generate the most rentals

```sql top_cities
select
    city,
    num_rentals
from sakila.top_cities;
```

## Most rented films

```sql top_films
select
    film_id,
    title,
    num_rentals
from sakila.top_films;
```



```sql top_spenders_graph
select
    full_name,
    total_spent
from sakila.top_spenders_graph;
```

<BarChart
    data={top_spenders_graph}
    title="Top 5 Customers by Total Spend"
    x=full_name
    y=total_spent
    swapXY=true
    color="darkgreen"
/>



```sql top_revenue_categories
select
    category,
    total_revenue
from sakila.top_revenue_categories;
```

<BarChart 
    data={top_revenue_categories} 
    title="Total Revenue per Film Category" 
    x=category 
    y=total_revenue 
    swapXY=true 
    color="darkgreen" />