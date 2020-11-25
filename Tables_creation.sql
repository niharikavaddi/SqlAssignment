use sqlexercises;

drop table if exists account_master;

drop table if exists customer_master;
  
drop table if exists loan_details;

create table account_master(
account_number int,account_opening_date date,customer_number int,
primary key(account_number)
);

create table customer_master(
customer_number int,firstname varchar(20),lastname varchar(20),
customer_city varchar(20),account_number int,primary key(customer_number)
);

create table loan_details(
loan_id int,customer_number int,loan_status varchar(20),primary key(loan_id)
);