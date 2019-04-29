create database if not exists MyFamily default character set utf8; 

use MyFamily;
create table family(
id int primary key auto_increment not null,
name1 varchar (25) default 'noname',
surname varchar (25) default 'noname',
age int default 0,
sex tinyint default 0
);

insert into family (name1, surname, age, sex)
value 
		('Yurii', 'tato', '26', '1'),
        ('Masha', 'mama', '26', '0'),
        ('Nastya', 'donya', '1', '0'),
        ('asda', 'asd', '20', '1'),
        ('sd', 'sdsd', '50', '1');

select * from family;
select * from family where age>30;
select * from family where age<5;
select * from family where name1 like '_a%';
select * from family where age>15 or age<3;

update family set age = 20 where id=1;
select * from family;

delete from family where age=20;
select * from family;

drop table family;

drop database myfamily;


        
        
        
        
        
