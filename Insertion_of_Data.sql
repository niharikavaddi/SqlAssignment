use sqlexercises;

insert into 
account_master (account_number,account_opening_date)
values
(123,"2020-11-20",1001),(124,"2020-02-02",1002),(125,"2001-05-24",1003),(126,"2005-10-11",1004),
(127,"2020-07-01",1005),(131,"2020-11-12",1006),(132,"2009-10-09",1007);

insert into 
customer_master(customer_number,firstname,lastname,customer_city,account_number) 
values
(1001,"Lakshmi","Vaddi","Chennai",123),(1002,"Vani","Padmaja","Hyderabad",124),(1003,"Mounika","Vaddi","Chennai",125),
(1004,"Srija","J","Bangalore",126),(1005,"Varsha","K","Andhra Pradesh",127),(1006,"Steffy","Leo","Kerala",128),
(1007,"Basheer","Ali","Chennai",129),(1008,"Sushanth","Singh","Hyderabad",130);

insert into loan_details(loan_id,customer_number,loan_status) 
values
(1,123,"Approved"),(2,124,"Approved"),(3,126,"Approved"),
(4,128,"Pending"),(5,130,"Pending"),(6,1006,"Approved"),
(7,1007,"Cancelled"),(8,1008,"Cancelled"); 


