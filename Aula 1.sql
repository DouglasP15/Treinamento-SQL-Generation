create database solar;
use solar;

select * from teste;

select Name, `kw ac`, address from teste
order by name asc;
-- asc - 0 - 9 ou a - z
-- desc 9 - 0 ou z - a

-- fazer uma contagem de dados em uma tabela
select count(*) from teste;

-- fazer uma contaggem sem repetir valores
-- é legal vc fazer por coluna
select count(distinct `kw ac`) from teste;

select * from teste order by name asc;