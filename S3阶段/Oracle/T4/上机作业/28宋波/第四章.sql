s////////////////////--------------------------------------------------------------------






















select abs(-15)from dual;
select ceil(3.14)from dual;
select floor(3.14)from dual;
select cos(10)from dual;
select sin(10)from dual;
select power(10,2)from dual;
select mod(10,4)from dual;
select round(10.216,2)from dual;
select trunc(3.5974,2)from dual;
select sqrt(4)from dual;
select sign(-10)from dual;
select concat('a','b')from dual;

select substr('mdsfhug',3,3)from dual;

select ltrim(  'hello')from dual;
select rtrim('hello'  )from dual;
select length('jfkul')from dual;
select upper('hello')from dual;
select lower('QWERT')from dual;
select initcap('dmgoh')from dual;
select translate('fgsghjjjd','j','a')from dual;
select instr('gjhyrki','y')from dual;
select replace('gfsdhfhgg','g','k')from dual;
select months_between(sysdate,to_date('2015-01-16','yyyy-mm-dd'))from dual;
select add_months(sysdate,5)from dual;
select next_day(sysdate,5)from dual;
select last_day(sysdate+57)from dual;
select to_char(sysdate,'yyyy-mm-dd dy am hh:mi:ss')from dual;
select to_number(0014,9999)from dual;


create table dept(
       did integer primary key,
       dname varchar2(20),
       manager integer,
       tel varchar2(30),
       master integer
)
select*from dept
insert into dept values(1,'董事会',5,'11111','0');
insert into dept values(2,'市场',6,'22222','1');
insert into dept values(3,'财务',7,'33333','2');
insert into dept values(4,'研发',8,'44444','3');

drop table dept




