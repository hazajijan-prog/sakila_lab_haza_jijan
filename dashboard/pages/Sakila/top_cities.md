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
