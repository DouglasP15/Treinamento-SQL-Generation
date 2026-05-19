use atividade_loja;

select * from vw_produtos;
-- mostrar os dados da view para produtos com preço maior que 20
select * from vw_produtos where price > 20;

-- quantidade total pro cliente
create view vw_quantidade_por_cliente as
select c.CustomerName as 'Nome do cliente',
m.MenuItemName as Produto,
o.quantity as Quantidade
from orders o
inner join customers c on c.Customer_ID = o.CustomerID
inner join menuitem m on o.MenuItemID - m.MenuItemID;

select * from vw_quantidade_por_cliente;

-- criar uma view de categoria por receita
-- nome do produto | Total de vendas (aplicar soma) |
-- Categoria da venda (alto/baixo) 
create view vw_categoria_receita as 
select m.MenuItemName as 'Nome do Produto',
sum(o.total) as 'Valor total da venda',
-- agora vamos criar nosso ''''if'''' >>> é o comando CASE
case
when sum(o.total) > 200 then "vendas altas"
-- when é o comando de onde - indica uma coluna a ser analisada
-- depois, colocamos a condição
-- ex: no if seria IF blablabla = lálálá
-- o then é o  a nossa resposta verdadeira
else 'vendas baixas'
-- para terminar, preciso dizer o nome da coluna que vai receber isso
end as 'Categoria da venda'
from orders o
inner join customers c on c.Customer_ID = o.CustomerID
inner join menuitem m on o.MenuItemID = m.MenuItemID GROUP BY m.MenuItemName;

select * from vw_categoria_receita;

-- quero ver todos os clientes e produtos consumidos em janeiro
create view vw_clientes_produtos_janeiro as
-- DICA 
-- WHERE o.OrderDate >= '2024-01-01' AND o.OrderDate <= '2024-01-31'
select c.customername as 'Nome do Cliente',
m.menuitemname as 'Nome do produto',
o.orderdate
from orders o
inner join Customers c on c.Customer_ID = o.CustomerID
inner join MenuItem m on o.MenuItemID = m.MenuItemID;
 
select * from vw_clientes_produtos_janeiro 
WHERE orderdate >= '2024-01-01' 
AND orderdate <= '2024-01-31';

insert into customers (CustomerName) values
('Douglas'),
('Luyz'),
('William');
