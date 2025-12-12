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