insert into cliente
  values('26', 'Davi', 'Davi@gmail.com', '1234');
  
  delete from cliente where id = 26;
  
  select email from  cliente where id =1;
  
  update cliente set nome = 'André', email = 'andregom@gmail.com' where id = 4;

select * from cliente

insert into cliente
 values('17', 'Maria Matos', 'MariaM@Gmail.com', '1234');

select * from pedido where id_cliente=3

select * from pedido;

select * from produto where titulo like  '%Samsung%'

insert into pedido 
 values ( 5, 5, '2018-09-08 14:20:30', '10.000');