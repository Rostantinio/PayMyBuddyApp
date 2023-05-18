/ Setting up paymybuddy DB /
DROP DATABASE IF EXISTS paymybuddy;
create database paymybuddy;
use paymybuddy;

DROP TABLE IF EXISTS connection;
create table connection(
ID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
DATE_CONNECT DATETIME);
insert into connection(DATE_CONNECT, EMAIL) values('2022-10-17',"david@gmail.com");
insert into connection(DATE_CONNECT, EMAIL) values('2021-11-17',"kamdem@gmail.com");
insert into connection(DATE_CONNECT, EMAIL) values('2022-12-25',"joseph@gmail.com");
insert into connection(DATE_CONNECT, EMAIL) values('2023-40-07',"paul@gmail.com");


DROP TABLE IF EXISTS user;
create table user(
 ID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
 FULLNAME varchar(30) NOT NULL,
 NAME varchar(30) NOT NULL,
 CREATE_DATE DATETIME,
 BALANCE int,
 PASSWORD int NOT NULL);

DROP TABLE IF EXISTS transaction;
create table transaction(
 ID int PRIMARY KEY NOT NULL,
 TRANSACTION_DATE DATETIME,
 AMOUNT double NOT NULL,
 DESCRIPTION varchar(150) NOT NULL);

DROP TABLE IF EXISTS operation;
create table operation(
 ID int PRIMARY KEY NOT NULL,
 OPERATION_TYPE varchar(30) NOT NULL,
 OPERATION_DATE DATETIME);

DROP TABLE IF EXISTS bank_account;
 create table bank_account(
 ID int PRIMARY KEY NOT NULL,
 TITLE varchar(30) NOT NULL,
 ACCOUNT_NUMBER int NOT NULL,
 CREATE_DATE DATETIME);


/ Setting up TEST DB /
DROP DATABASE IF EXISTS test;
create database test;
use test;

DROP TABLE IF EXISTS connection;
create table connection(
ID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
DATE_CONNECT DATETIME NOT NULL);
insert into connection(DATE_CONNECT, EMAIL) values('2022-10-17',"david@gmail.com");
insert into connection(DATE_CONNECT, EMAIL) values('2021-11-17',"kamdem@gmail.com");
insert into connection(DATE_CONNECT, EMAIL) values('2022-12-25',"joseph@gmail.com");
insert into connection(DATE_CONNECT, EMAIL) values('2023-40-07',"paul@gmail.com");

DROP TABLE IF EXISTS user;
create table user(
 ID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
 FULLNAME varchar(30) NOT NULL,
 NAME varchar(30) NOT NULL,
 CREATE_DATE DATETIME,
 BALANCE int,
 PASSWORD int NOT NULL);

DROP TABLE IF EXISTS transaction;
create table transaction(
 ID int PRIMARY KEY NOT NULL,
 TRANSACTION_DATE DATETIME,
 AMOUNT double NOT NULL,
 DESCRIPTION varchar(150) NOT NULL);

DROP TABLE IF EXISTS operation;
create table operation(
 ID int PRIMARY KEY NOT NULL,
 OPERATION_TYPE varchar(30) NOT NULL,
 OPERATION_DATE DATETIME);

DROP TABLE IF EXISTS bank_account;
 create table bank_account(
 ID int PRIMARY KEY NOT NULL,
 TITLE varchar(30) NOT NULL,
 ACCOUNT_NUMBER int NOT NULL,
 CREATE_DATE DATETIME);
commit;
