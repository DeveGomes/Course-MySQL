use pedido_venda;

select * from produto

create table produto(
id bigint primary key auto_increment,
nome varchar(100),
valor_unitario decimal (10,2),
qtd_estoque integer
)engine=InnoDB;

-- drop table "nome da tabela" - apagar tabela

create table item_pedido(
pedido_id bigint,
produto_id bigint,
quantidade integer,
primary key(pedido_id, produto_id),
foreign key (pedido_id)
 references pedido(id),
foreign key (produto_id)
 references produto(id)
 )engine=InnoDB;
 
 select*from produto
 
 insert into produto(nome, valor_unitario, qtd_estoque)
  values ('Coca Cola', '10.00', '600');
  
  select * from pedido