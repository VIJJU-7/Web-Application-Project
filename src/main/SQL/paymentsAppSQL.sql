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


CREATE TABLE Bank_Account_Type (
Id              INT NOT NULL AUTO_INCREMENT,
Acct_Type_Code  VARCHAR(3) UNIQUE,
Acct_Type_Name  VARCHAR(15),
primary key     (Id)
);

INSERT INTO Bank_Account_Type (
Id,
Acct_Type_Code,
Acct_Type_Name
) 
VALUES 
(1,"SA","SAVINGS ACCOUNT"),
(2,"CA","CURRENT ACCOUNT"),
(3,"LA","LOAN ACCOUNT"),
(4,"SL","SALARY ACCOUNT");


select * from Bank_Account_Type;

desc Bank_Account_Type;

-- drop table Bank_Account_Type;

CREATE TABLE Bank_Acct_Details (
User_ID            INT NOT NULL,
Id                 INT NOT NULL auto_increment,
Acct_Num           VARCHAR(30) UNIQUE NOT NULL,
Acct_Holder_Name   VARCHAR(50) NOT NULL,
Bank_Name          VARCHAR(40) NOT NULL,
Acct_IFSC_Code     VARCHAR(20) NOT NULL,
Acct_Type          VARCHAR(3) NOT NULL, 
BanK_Balance       DOUBLE NOT NULL DEFAULT "0",
Phone_Num          varchar(20) not null,
FOREIGN KEY        (Id) 
REFERENCES         Bank_Account_Type(Id),
FOREIGN KEY        (User_ID)
REFERENCES         Register_Details(User_ID),
PRIMARY KEY        (Acct_Num)
);

select * from Bank_Acct_Details;

desc Bank_Acct_Details;

-- drop table Bank_Acct_Details;


Select Register_Name, Password from Register_Details;

alter table Register_Details add Currwalletbal double not null default '0';
alter table Register_Details add Address varchar(50) not null;
alter table Register_Details add User_ID int primary key auto_increment not null;
alter table Bank_Acct_Details add Phonenum long not null;
alter table Bank_Acct_Details add BaAccName varchar(50);


alter table Bank_Acct_Details modify column Phonenum varchar(20) not null;
alter table Bank_Acct_Details modify column User_ID int null;
alter table Bank_Acct_Details modify column BaTypeID int default 0;
alter table Bank_Acct_Details modify column Acct_Type varchar(30);


set sql_safe_updates = 0;
set sql_safe_updates = 1;

-- delete from Register_Details;