-- RFM Customer Analysis
create table private.rfm_analysis as
select customer_id,
to_char(max(
to_timestamp(invoicedate,'MM/DD/YY HH24:MI')),'YYYY-MM-DD HH24:MI') as last_purchase,
date_part('day',(
select max(to_timestamp(invoicedate,'MM/DD/YY HH24:MI'))
from private.retail_clean)- max(to_timestamp(invoicedate,'MM/DD/YY HH24:MI'))) as recency,
    count(distinct invoice) as frequency,
    round(sum(revenue),2) as monetary
from private.retail_clean
group by customer_id;
