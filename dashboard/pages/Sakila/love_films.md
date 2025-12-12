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
