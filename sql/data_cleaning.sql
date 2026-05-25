select count(*)
from private.retail;

create table private.retail_clean as
select distinct *
from private.retail
where invoice not like 'C%'
and quantity > 0
and customer_id is not null;

alter table private.retail_clean 
alter column revenue type numeric(10, 2);

update private.retail_clean
set revenue = quantity * price;

