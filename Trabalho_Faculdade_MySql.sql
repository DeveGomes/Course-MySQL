create database estoque_supermercado

use estoque_supermercado

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO Categoria (nome, descricao) VALUES
('Bebidas', 'Refrigerantes, sucos, águas e alcoólicos'),
('Frios', 'Queijos, presuntos e derivados'),
('Higiene', 'Produtos de higiene pessoal'),
('Limpeza', 'Produtos de limpeza em geral'),
('Alimentos', 'Grãos, massas e enlatados');

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    cnpj VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO Fornecedor (nome, cnpj, telefone, email) VALUES
('Coca-Cola Brasil', '12.345.678/0001-99', '(34) 3333-1111', 'contato@cocacola.com'),
('Nestlé', '98.765.432/0001-22', '(34) 3333-2222', 'vendas@nestle.com'),
('Unilever', '11.222.333/0001-44', '(34) 3333-3333', 'atendimento@unilever.com');

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco_compra DECIMAL(10,2) NOT NULL,
    preco_venda DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT DEFAULT 0,
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

INSERT INTO Produto (nome, preco_compra, preco_venda, quantidade_estoque, id_categoria, id_fornecedor) VALUES
('Coca-Cola Lata 350ml', 2.00, 4.50, 100, 1, 1),
('Arroz 5kg', 15.00, 25.00, 50, 5, 2),
('Sabonete Dove', 2.50, 5.00, 80, 3, 3),
('Queijo Mussarela Kg', 20.00, 35.00, 30, 2, 2);

CREATE TABLE Compra (
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_fornecedor INT,
    data_compra DATE NOT NULL,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

INSERT INTO Compra (id_fornecedor, data_compra, valor_total) VALUES
(1, '2025-08-01', 200.00),
(2, '2025-08-05', 750.00);

CREATE TABLE Item_Compra (
    id_item_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_compra INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

INSERT INTO Item_Compra (id_compra, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 100, 2.00), 
(2, 2, 50, 15.00), 
(2, 4, 20, 20.00); 

select  c.valor_total, f.nome
  from Compra c, fornecedor f
    where valor_total >= 500.00
    
update Produto
 set preco_venda = preco_venda * 1.10
  where id_produto = 1
  
select * from fornecedor

update Fornecedor
 set email = 'agoraocontatoe@cocacola.com'
  where id_fornecedor = 1
  
  update Fornecedor
   set email = 'contato2@Unilever.com'
    where id_fornecedor = 3
    
    delete from categoria 
     where id_categoria = 4
     
	select * from categoria
      
INSERT INTO Produto (nome, preco_compra, preco_venda, quantidade_estoque, id_categoria, id_fornecedor)
VALUES 
('Danone Morango 170g', 1.50, 3.00, 50, 5, 2),
('Danone Coco 170g', 1.50, 3.00, 50, 5, 2);

 select * from Produto
  where (nome like '%Danone%' or nome like  '%queijo%')
    and preco_venda >= 3.20
    
    select * from Produto
      where nome not like '%danone%'
   
   update produto 
    set preco_venda = 4.00
     where id_produto = 5
     
     INSERT INTO Produto (nome, preco_compra, preco_venda, quantidade_estoque, id_categoria, id_fornecedor)
VALUES ('Iogurte Natural 200g', 1.20, 2.50, 40, 5, NULL);


 select * from Produto
  where id_fornecedor is null
  
  INSERT INTO Fornecedor (nome, cnpj, telefone, email)
VALUES ('Canto de Minas', '12.345.678/0001-99', '(34) 3333-4444', 'contato@cantodeminas.com');

update Produto 
 set id_fornecedor = 4
  where id_produto = 7
 
 select * from fornecedor
 
 select * from Produto
  where id_fornecedor is not null
   
    
     