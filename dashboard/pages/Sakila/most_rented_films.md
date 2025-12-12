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
