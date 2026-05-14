create database mercado;
use mercado;
-- vamos criar duas tabelas e fazer elas se comunicarem
create table marcas (
id_marcas varchar(36) default (uuid()) primary key,
nome_marcas varchar (255),
segmento varchar (255)
);

create table produtos(
id_produtos varchar(36) default (uuid()) primary key,
nome_produtos varchar(255) not null,
preco decimal(10,2) not null,
id_marcas varchar(36),
-- o campo id_marcas é uma chave estrangeira e chamamos ele aqui como referencia
constraint fk_marca_produto
foreign key (id_marcas) references marcas(id_marcas)
);