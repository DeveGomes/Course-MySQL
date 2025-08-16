select current_user();

create database pedido_venda;

use pedido_venda;

create table cliente(
 id bigint primary key auto_increment,
 nome varchar(100),
 email varchar (50),
 data_nascimento date
)engine=InnoDB;

create table pedido(
 id bigint primary key auto_increment,
 data_criacao datetime,
 observacao text,
 data_entrega date,
 valor_frete decimal(6,2),
 valor_total decimal(10,2)
)engine=InnoDB;

grant select, insert on pedido_venda.* to 'algaworks'@'localhost';
flush privileges;

  select*from pedido;
  
alter table pedido
  add column cliente_id bigint,
    add constraint fk_cliente_id
     foreign key (cliente_id)
      references cliente(id)
      
	insert into cliente(nome, email, data_nascimento)
    values('Andre', 'andrregom@gmail.com', '2025-08-16');
    
    insert into pedido (data_criacao, observacao, data_entrega, valor_frete, valor_total, cliente_id)
      values ('2015-08-16', 'URGENTE', '2025-12-09', '30.00', '199.90',' 1 ');  
    
    select * from cliente;
    select * from pedido;
