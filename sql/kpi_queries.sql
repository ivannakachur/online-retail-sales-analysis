-- KPI metrics
select
    round(sum(revenue), 2) as total_revenue,
    count(distinct invoice) as total_orders,
    count(distinct customer_id) as total_customers
from private.retail_clean;

-- Average Order Value
select round(avg(order_total), 2) as average_order_value
from (
select 
invoice, 
sum(revenue) as order_total
from private.retail_clean
group by invoice
) t;
