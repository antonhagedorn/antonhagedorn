select
--orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - ordercostprice as orderprofit,
o.ordercostprice,
o.ordersellingprice,

--from customer
c.customername,
c.segment,
c.country,

--product
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o

left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }}  as p
on o.productid = p.productid