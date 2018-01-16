create table dept(
       did integer primary key,
       dname varchar2(20),
       manager integer,
       tel varchar2(30),
       master integer
)
select*from dept


create table emp(
       eid integer primary key,
       ename varchar2(20),
       sex varchar2(1),
       hire date,
       sar number(8,2),
       did integer
)

select*from emp

create table history(
       hid integer primary key,
       startdate date,
       enddate date,
       place varchar2(50),
       job varchar2(20),
       eid integer
)
select*from history

alter table dept drop column master
alter table emp modify sex varchar2(2)
alter table dept add master integer;
alter table emp add constraint sexvalue check(sex in('m','f'));
alter table emp drop constraint sexvalue;

insert into dept values(1,'董事会',5,'11111','0');
insert into dept values(2,'董事会',6,'22222','1');
insert into dept values(3,'董事会',7,'33333','1');
insert into dept values(4,'董事会',8,'44444','1');


insert into emp values(5,'tom','m','12-5月-12',4500.50,1);
insert into emp values(6,'jacky','m','13-5月-12',2982.12,2);
insert into emp values(7,'kelly','f','14-5月-12',3491.32,3);
insert into emp values(8,'red','f','15-5月-12',3700.00,4);
insert into emp values(9,'blue','m','16-5月-12',3800.00,2);
insert into emp values(10,'green','m','17-5月-12',5100.00,3);
insert into emp values(11,'peter','m','18-5月-12',6700.00,4);

insert into emp values(12,'pe','m',sysdate-101,6700.00,4);

insert into emp values(13,'bb','m',to_date('2008-09-19','yyyy-mm-dd'),7200.00,3)


update emp set sar=sar+10;
update emp set sar=sar+100 where sar<3500
update emp set hire =to_date('2018-01-16','yyyy-mm-dd')where ename='bb'

delete emp where ename='pe'


select *from emp order by sar asc;
select *from emp order by did asc,sar desc;
select *from emp where sar between 3000 and 5000;
select *from emp where sar not between 3000 and 5000;
select *from emp where did in(2,3)
select *from emp where ename like 'b%'

select *from emp where sex='f' and sar>3000
select *from emp where sex='f' or sar>3000
select avg(sar),max(sar),min(sar) from emp;
select count(eid),sum(sar) from emp;
select distinct(did) from emp;

select d.dname,max(e.sar),min(e.sar),avg(e.sar)
from dept d,emp e
where d.did=e.did
group by d.dname


select d.dname,max(e.sar),min(e.sar),avg(e.sar)
from dept d,emp e
where d.did=e.did
group by d.dname
having avg(e.sar)<2000


select *from emp where sar>5000
union
select *from emp where did=1


select ename||'的工资是'||sar||'元'from emp;
select *from emp where eid not in(select manager from dept) ;
select did,avg(sar)
from emp
group by did;

select d.did,d.dname,e.ename
from dept d left join
emp e on
d.did=e.did;




