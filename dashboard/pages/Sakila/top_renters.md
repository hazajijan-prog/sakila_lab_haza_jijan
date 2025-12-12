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
