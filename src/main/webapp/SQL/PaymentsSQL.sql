create database vijay;

use vijay;

create table Register_Details(
User_ID          int primary key auto_increment not null,
Register_Name    varchar(50) not null,
Email            varchar(25) not null,
Phone_Num        varchar(15) unique not null,
Address          varchar(200) not null,
DOB              date not null,
Currwalletbal    double not null default '0.0',
Password         varchar(10) not null
);
-- drop table Register_Details;

select * from Register_Details;

Select Register_Name, Password from Register_Details;

alter table Register_Details add Currwalletbal double not null default '0';

alter table Register_Details add Address varchar(50) not null;

alter table Register_Details add User_ID int primary key auto_increment not null;

alter table Register_Details modify column Phone_Num bigint unique not null;

set sql_safe_updates = 0;
set sql_safe_updates = 1;

-- delete from Register_Details;