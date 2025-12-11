# Exploring Sakila database

## Most rented films
#### Shows which films are most popular based on total rentals.

<BarChart 
    data={top_films} 
    x="title" 
    y="num_rentals"
    swapXY=true 
    series=title
/>

```sql top_films
select
    film_id,
    title,
    num_rentals
from sakila.top_films;
```

## Films longer than 180 minutes
#### Filters out all movies with a runtime over 3 hours. 

<BarChart 
    data={long_films} 
    x="title" 
    y="length"
    swapXY=true
    series=title
/>

```sql long_films
select
    title,
    length
from sakila.long_films;
```

## Films containing "love" in the title
#### Lists films that include the word 'love'.

<BarChart
  data={love_films}
  x="title"
  y="length"
  swapXY=true
  series=title
/>

```sql love_films
select 
    title,
    description,
    length,
from sakila.love_films;
```

## Revenue per film category
#### Shows which categories generate the highest revenue.

<BarChart 
    data={top_revenue_categories}  
    x=category 
    y=total_revenue 
    swapXY=true
 />

```sql top_revenue_categories
select
    category,
    total_revenue
from sakila.top_revenue_categories;
```


## Customers who spent the most money
#### Identifies the store’s most valuable customers.

<BarChart
    data={top_spenders}
    x=full_name
    y=total_spent
    swapXY=true
    series=full_name
/>

```sql top_spenders
select
    full_name,
    total_spent
from sakila.top_spenders;
```

## Customers who rented the most movies
#### Shows customers who rent the most frequently.

<BarChart
  data={top_renters}
  x=full_name
  y=num_rentals
  swapXY=false
  series=full_name
/>

```sql top_renters
select
    customer_id,
    full_name,
    num_rentals
from top_renters;
```

## Cities that generate the most rentals
#### Highlights which locations drive the most rental activity.

<ECharts config={{
    color: [
        '#ffa7c4',
        '#ffbfd4',
        '#ff88ad',
        '#d97a88',
        '#c08c6e',
        '#e7c9b1',
        '#b35f68',
        '#8c4a4e'
    ],
    tooltip: {
        formatter: '{b}: {c} rentals ({d}%)'
    },
    series: [
        {
            type: 'pie',
            radius: '65%',
            data: [...top_cities_pie]
        }
    ]
}} />

```sql top_cities_pie
select 
    city as name,
    num_rentals as value
from top_cities;
```

