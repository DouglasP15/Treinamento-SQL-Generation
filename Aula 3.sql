create database floricultura;
use floricultura;
create table flores(
id_flores varchar(36) default (uuid()) primary key,
nome_flor varchar(100) default 'rosa'
);

insert into flores() values ();

select * from flores;

create table fornecedor(
id_fornecedor varchar (36) default (uuid()) primary key,
nome_fornecedor varchar(255) not null unique,
cidade_fornecedor varchar(255) default "campinas",
cnpj bigint default 123456
);

create table contas(
id_contas varchar(36) default (uuid()) primary key,
nome_da_conta varchar(255) not null unique,
id_fornecedor varchar(36),
qtd_flor decimal(10,2) not null,
id_flor varchar(36),
-- criar as relações
foreign key (id_fornecedor) references fornecedor(id_fornecedor),
foreign key (id_flor) references flores(id_flores)
);

insert into flores(nome_flor) values
('margarida'),
('opera'),
('orquidea'),
('lirio'),
('tulipa');

insert into fornecedor(nome_fornecedor) values
('sunset_lover'),
('sky_wanderer'),
('neon_ninja'),
('starlight_dancer'),
('zen_master');

-- ver flores e fornecedores