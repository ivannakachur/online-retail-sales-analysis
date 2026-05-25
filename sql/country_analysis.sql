--Top countries
select
country,
round(sum(revenue),2) revenue
from private.retail_clean
where country != 'United Kingdom'
group by country
order by revenue desc
limit 10;
