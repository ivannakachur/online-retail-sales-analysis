-- Sales by Month
select to_char(
to_timestamp(invoicedate, 'MM/DD/YY HH24:MI'), 
'YYYY-MM') as month,
round(sum(revenue), 2) as revenue
from private.retail_clean
group by month
order by month;
