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
