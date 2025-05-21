show databases;
use vit;
show tables from vit;
use vit;
drop table ece;
desc cse;
alter table cse drop column address;

select * from mech;

delete from mech where mark <50;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
use vit;
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
show tables from vit;

delete from worker;

select * from worker;

desc worker;

truncate table worker;

desc worker;

create table employee(
id int,
ename varchar(10)
);

start transaction;
insert into employee values (101, 'Sachin');
savepoint a11;
insert into employee values (102, 'Sagar');
savepoint a12;

delete from employee where id=102;

select * from cse;

rollback to a12;

select * from cse;

commit;

select first_name as employee_name from worker;

desc worker;

select first_name from worker where salary>=300000;
select * from worker where department = 'HR';
select first_name as emp_name from worker where salary>=200000;

select * from worker where salary>200000 and department = 'HR';

select * from worker where salary<200000 and department = 'HR' or department = 'admin';

select * from worker where salary>100000 and salary<300000 and department = 'admin' or department = 'hr';

select * from worker where worker_id in (1,2,3);
select * from worker where worker_id not in (1,2,3);

select * from worker where worker_id % 2 = 0 and department in ('admin', 'hr') and salary = (select max(salary) from worker where worker_id % 2 = 0 and department in ('admin', 'hr'));

