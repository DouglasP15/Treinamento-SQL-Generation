insert into contas(nome_da_conta, id_fornecedor,qtd_flor,id_flor) values
('Douglas','afbf4a74-5085-11f1-90a1-b42e99f59e97',50,'afbeb234-5085-11f1-90a1-b42e99f59e97'),
('Douglas1','afbf4a74-5085-11f1-90a1-b42e99f59e97',30,'afbeb1ef-5085-11f1-90a1-b42e99f59e97'),
('Douglas2','afbf5125-5085-11f1-90a1-b42e99f59e97',40,'2de575fd-5081-11f1-90a1-b42e99f59e97'),
('Douglas3','afbf5125-5085-11f1-90a1-b42e99f59e97',100,'afbeb06c-5085-11f1-90a1-b42e99f59e97'),
('Douglas4','afbf5125-5085-11f1-90a1-b42e99f59e97',10,'afbeb1ef-5085-11f1-90a1-b42e99f59e97'),
('Douglas5','afbf5213-5085-11f1-90a1-b42e99f59e97',50,'2de575fd-5081-11f1-90a1-b42e99f59e97'),
('Douglas6','afbf5213-5085-11f1-90a1-b42e99f59e97',100,'afbeb1ef-5085-11f1-90a1-b42e99f59e97'),
('Douglas7','afbf5213-5085-11f1-90a1-b42e99f59e97',100,'afbeb183-5085-11f1-90a1-b42e99f59e97'),
('Douglas8','afbf527f-5085-11f1-90a1-b42e99f59e97',1,'2de575fd-5081-11f1-90a1-b42e99f59e97'),
('Douglas9','afbf4a74-5085-11f1-90a1-b42e99f59e97',30,'afbeb1ef-5085-11f1-90a1-b42e99f59e97'),
('Douglas10','afbf52e1-5085-11f1-90a1-b42e99f59e97',15,'afbeb234-5085-11f1-90a1-b42e99f59e97');


select fornecedor.nome_fornecedor, flores.nome_flor, contas.qtd_flor
from contas inner join fornecedor on contas.id_fornecedor = fornecedor.id_fornecedor
inner join flores on contas.id_flor = flores.id_flores;