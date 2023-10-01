-- 1. Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT 
    CASE 
        WHEN "Marital Status" = '' THEN 'Unknown'
        ELSE "Marital Status"
    END AS marital_status,
    AVG(age) AS average_age
FROM "Customer" c 
GROUP BY 1;


-- 2. Berapa rata-rata umur customer jika dilihat dari gender nya ?
select 
	case 
		when "gender" = 0 then 'female'
		when "gender" = 1 then 'male'
	end as gender_type,
	avg(age) as average_age
from "Customer" c 
group by 1;


-- 3. Tentukan nama store dengan total quantity terbanyak!
select "storename",
	   sum(qty) as	total_quantity
from "Store" s 
join "Transaction" t 
on t.storeid  = s.storeid 
group by 1
order by 2 desc;

-- 4. Tentukan nama produk terlaris dengan total amount terbanyak!
select "Product Name",
	   sum(totalamount) as	total_amount
from "Product" p 
join "Transaction" t 
on t.productid  = p.productid 
group by 1
order by 2 desc;

