-- Top products by revenue
select description as product, 
round(sum(revenue), 2) as revenue
from private.retail_clean
group by description
order by revenue desc
limit 10;

-- Best selling products
select description as product,
sum(quantity) as quantity
from private.retail_clean
group by description 
order by quantity desc
limit 10;

-- Low performing products
select description as product,
sum(quantity) as total_quantity
from private.retail_clean
group by description 
order by total_quantity asc
limit 10;
