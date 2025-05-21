create database tuesday;
drop database tuesday;
use tuesday;
create table category(
id int primary key,
cname varchar(20),
details varchar(25)
);

insert into category values (101,'electronic','sdfubfiu');
insert into category values (102,'furniture','idubfkjb');

select * from category;

drop table products;

create table products(
p_id int primary key,
p_name varchar(20),
p_details varchar(35),
id int,
foreign key products(id) references category(id) on delete cascade
);

delete from category where id=101;
desc products;

insert into products values (502,'samsung s21','8gb',101);
select * from products;

create table persons(
id int not null,
lastname varchar(50) not null,
firstname varchar(50),
age int,
constraint UC_Person unique (id,lastname)
);

alter table persons
drop index UC_Person;
