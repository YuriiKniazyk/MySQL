delimiter //
USE Bank;
create procedure maxumym()
begin 
select max(sum), FirstName, LastName from application 
join 
client ON 
application.Client_idClient = client.idClient 
group by client.idClient;
end;
delimiter;
call maxumym;

delimiter //
use bank;
create procedure suma()
begin
/*25*/select sum from application where sum > (select avg(sum) from application limit 1);
end;
delimiter;
call suma;