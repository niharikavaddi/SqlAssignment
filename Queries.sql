use sqlexercises;

select * from account_master;
select * from customer_master;
select * from loan_details;

insert into loan_details(loan_id,customer_number,loan_status) values(6,1006,"Approved"),(7,1007,"Cancelled"),(8,1008,"Cancelled"); 

SELECT am.account_number,cm.customer_number,cm.firstname,cm.lastname,am.account_opening_date
FROM customer_master cm INNER JOIN account_master am
ON cm.customer_number=am.customer_number
ORDER BY am.account_number;

SELECT count(customer_city) Cust_Count
FROM customer_master
WHERE customer_city='Chennai';

SELECT am.customer_number, cm.firstname, cm.account_number
FROM customer_master cm INNER JOIN account_master am
ON cm.customer_number=am.customer_number
WHERE day(account_opening_date)>15
ORDER BY am.customer_number, am.account_number;

SELECT count(customer_number) Count_Customer
FROM customer_master
WHERE customer_number NOT IN (SELECT customer_number FROM account_master);

SELECT cm.firstname
FROM customer_master cm INNER JOIN account_master am
ON cm.customer_number=am.customer_number 
GROUP BY firstname HAVING count(am.account_number)>1 ORDER BY firstname;

SELECT count(cm.customer_number) count FROM
customer_master cm INNER JOIN loan_details ld 
on cm.customer_number=ld.customer_number WHERE cm.customer_number NOT IN
(SELECT customer_number FROM account_master);

SELECT cm.firstname  
FROM customer_master cm INNER JOIN account_master am 
ON am.customer_number=cm.customer_number
GROUP BY firstname HAVING count(cm.customer_number)>=2
ORDER BY firstname;