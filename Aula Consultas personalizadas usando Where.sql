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
  
  select * from item_pedido
  
insert into item_pedido(pedido_id, produto_id, quantidade)
 values(1,1,5);
 
 select * from cliente
 
 select * from cliente
  where nome = 'Andre'
  
  select * from cliente
   where data_nascimento >= '1991-01-01'
   
select * from pedido
 where observacao is not null
 
 select * from pedido
   where observacao is not null
    and valor_total > 5
    
    insert into produto (nome, valor_unitario, qtd_estoque)
     values ('Sanduba', 23.00, 10)
     
	insert into item_pedido(pedido_id, produto_id, quantidade)
     values(1,2,3)
     
     select * from item_pedido
     
     select p. valor_total
        from pedido p, cliente c
         where p.cliente_id = c.id
          and c. nome  = 'Andre'
          
          select pr.nome, i.quantidade
           from cliente c, pedido pe, item_pedido i, produto pr
           where c.id = pe.cliente_id
            and pe.id = i.pedido_id
             and i.produto_id = pr.id
             and c.nome = 'Andre'
             
		select * from cliente
        select * from pedido
        
        insert into pedido (data_criacao, observacao, data_entrega, valor_frete, valor_total, cliente_id)
          values (now(),'Apartamento', '2024-08-23', 15.00, 210.00, 2)
          -- now() utilizado p/ mostrar a data e hora atual.
		insert into cliente (nome, email, data_nascimento)
         values('Maria', 'Duda@Gmail.com', '2007-01-10')
          
           select * from pedido
            where month(data_criacao) = 8
             and year (data_entrega) = 2024
      -- selecionar month, year, day somente
       
        select * from pedido
          where data_criacao >= '2024-08-12 00:00:00'
           