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

create table Bank_Account_Types(
BaType                enum ("CURRENT", "LOAN", "SAVINGS", "SALARY"),
BaTypeID              int not null,
ACCT_Type_Code        varchar(3),
ACCT_Type_Description varchar(25),
primary key           (BaTypeID)
);

select * from Bank_Account_Types;

desc Bank_Account_Types;

-- drop table Account_Types;


create table Bank_Acct_Details(
User_ID           int not null,
BaTypeID          int not null,
BaNumber          varchar(25) not null,
BaName            varchar(20),
IFSC_CODE         varchar(10),
BaPin             varchar(10),
CurrentBankBal    double,
primary key      (BaNumber),
foreign key      (BaTypeID)
references        Bank_Account_Types (BaTypeID),
foreign key      (User_ID)
references        Register_Details (User_ID)
);

select * from Bank_Acct_Details;

desc Bank_Acct_Details;

-- drop table Bank_Acct_Details;


Select Register_Name, Password from Register_Details;

alter table Register_Details add Currwalletbal double not null default '0';

alter table Register_Details add Address varchar(50) not null;

alter table Register_Details add User_ID int primary key auto_increment not null;


alter table Register_Details modify column Phone_Num bigint unique not null;
alter table Bank_Acct_Details modify column User_ID int null;
alter table Bank_Acct_Details modify column BaTypeID int null;

set sql_safe_updates = 0;
set sql_safe_updates = 1;

-- delete from Register_Details;