Question 3:

select a.cus_gender,b.ord_amount,count(1) num from customer a, ordr b
where a.cus_id = b.cus_id
and b.ord_amount > 3000
group by a.cus_gender;

Question 4:

select a.ord_id,a.ord_amount,b.pro_id,b.pro_name,b.pro_desc 
from ordr a, product b, product_Details c, customer d
where a.prod_id = c.prod_id
and c.pro_id = b.pro_id
and a.cus_id = d.cus_id
and d.cus_id = 2;

Question 5:

select a.supp_id,a.supp_name,count(b.pro_id) 
from supplier a, product b, product_details c
where a.supp_id = c.supp_id
and c.pro_id = b.pro_id
group by supp_id having count(1) > 1;

Question 6:

select min(c.ord_amount),a.cat_id,a.cat_name 
from category a, product b, ordr c, product_details d
where a.cat_id = b.cat_id
and b.pro_id = d.pro_id
and c.prod_id = d.prod_id;

Question 7:

select a.pro_id,a.pro_name from 
product a, product_details b, ordr c
where a.pro_id = b.pro_id
and b.prod_id = c.prod_id
and c.ord_date > str_to_date('2021-10-05','%Y-%m-%d');

Question 8;

select a.supp_name,a.supp_id,c.rat_ratstars,b.cus_name 
from supplier a, customer b, rating c
where a.supp_id = c.supp_id
and b.cus_id = c.cus_id
order by c.rat_ratstars desc limit 3;

Question 9:

select cus_name,cus_gender
from customer
where substr(cus_name,1,1) = 'A'
or substr(cus_name,length(cus_name),length(cus_name)) = 'A';

Question 10:

select sum(ord_amount) from customer a, ordr b
where a.cus_id = b.cus_id
and a.cus_gender = 'M';

Question 11:

select * from customer a left join ordr b
on a.cus_id = b.cus_id;

Question 12:

--------------------------------------------------------------
Procedure
--------------------------------------------------------------

DELIMITER //

CREATE PROCEDURE RATE_SUPPLIER( in supplier_name varchar(20))
BEGIN
	select b.rat_ratstars,
case when b.rat_ratstars > 4 then 'Genuine Supplier'
when b.rat_ratstars > 2 and b.rat_ratstars <=4 then 'Average Supplier' else
'Supplier should not be considered' end as Verdict
from supplier a, rating b
where a.supp_id = b.supp_id
and a.supp_name = supplier_name;
END //

DELIMITER ;

--------------------------------------------------------------

To Call the procedure,

call rate_supplier('Rajesh Retails'); // Pass the supplier name as argument