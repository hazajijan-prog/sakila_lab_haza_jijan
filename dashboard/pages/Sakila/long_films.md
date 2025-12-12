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
