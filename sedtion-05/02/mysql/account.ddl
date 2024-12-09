create table account(
	id bigint not null auto_increment,
	accno varchar(10) not null,
	accnm varchar(100) not null,
	primary key (id)
);

select * from account;

insert into account (accno,accnm) values ('A10000', '나의 적금통장');
insert into account (accno,accnm) values ('A20000', '나의 적금통장2');
insert into account (accno,accnm) values ('A30000', '나의 적금통장3');
insert into account (accno,accnm) values ('A40000', '나의 적금통장4');

update account set accnm = '나의 적ㅁ금통장3-1'
where id = 3;
 
delete from account 
where id = 4;