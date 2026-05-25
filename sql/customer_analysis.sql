-- Top customers
select customer_id, round(sum(revenue), 2) as total_revenue
from private.retail_clean
group by customer_id 
order by total_revenue desc
limit 10;
