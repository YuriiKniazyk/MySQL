create database if not exists HomeWork default character set utf8;
 use HomeWork;
 create table Unicorns (
 id int primary key auto_increment not null,
 name varchar(20),
 color varchar(20),
 weight int);
 
 create table Forests (
 id int primary key auto_increment not null,
 name varchar(20),
 area int
 );
 
 insert into Unicorns(name,color,weight)
 value 
		('Ron','red', 100),
        ('Bred','green', 200),
        ('Shon','yellow', 250),
        ('Modo','black',300),
        ('Lin','grey',300);
        
insert into forests(name,area)
 value 
		('Rainforests',1000),
        ('Taiga',5000),
        ('Hardwood forests',2000),
        ('Tropical forest',5000);
        
create table ref_uni_for (
	id int primary key auto_increment not null,
    refuni int,
    reffor int,
    foreign key ref_uni_for(refuni) references unicorns(id) 
    );

alter table ref_uni_for
	add constraint xxx
		foreign key ref_uni_for(reffor) references forests(id); 

insert into ref_uni_for(refuni,reffor)
	value 
		(1,1),
        (1,2),
        (2,2),
        (2,3),
        (3,4),
        (4,4);

select count(*),forests.name from unicorns 
	join ref_uni_for on ref_uni_for.reffor = unicorns.id
    join forests on ref_uni_for.reffor = forests.id group by forests.id;
