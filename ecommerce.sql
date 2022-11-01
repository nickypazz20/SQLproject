CREATE DATABASE ecommerce ;

use ecommerce 

CREATE TABLE vendas (
    numero__pedido int primary key auto_increment  ,
    dat_venda date NOT NULL, 
    nome_cliente varchar(80) NOT NULL ,
    DDD char(2) NOT NULL ,
    telefone varchar(9) NOT NULL ,
    nome_vendedor varchar(80)  NOT NULL ,
    valor_pedido decimal(9,2) NOT NULL ,
    forma_pagamento enum ("CH" , "R$" , "BO" , "AC" , "CC" , "CD") ,
    obs TEXT 
);

insert into vendas (numero__pedido , dat_venda , nome_cliente , DDD , telefone , nome_vendedor , forma_pagamento , valor_pedido , obs)
values ("2022-9-14" , "Marcos Cruz" , "11" , "5670-1234" , "Ana Clara" , "CD" , 5250.20 , "Fez em 2 cheques");

insert into vendas (numero__pedido , dat_venda , nome_cliente , DDD , telefone , nome_vendedor , forma_pagamento , valor_pedido)
values ("2022-9-15" , "Fiat Lux S/A" , "13" , "912370011" , "Ana Clara" , "CH" , 987.12 );

insert into vendas (numero__pedido , dat_venda , nome_cliente , DDD , telefone , nome_vendedor , forma_pagamento , valor_pedido , obs)
values ("2022-9-15" , "Rita Souza" , "21" , "2168-1010" , "Valdir" , "BO" , 7542.97 , "Pediu prazo 60 dias");

insert into vendas (numero__pedido , dat_venda , nome_cliente , DDD , telefone , nome_vendedor , forma_pagamento , valor_pedido)
values ("2022-9-15" , "Mario Andrada" , "14" , "912345678" , "Regina" , "R$" , 275.50 );

insert into vendas (numero__pedido , dat_venda , nome_cliente , DDD , telefone , nome_vendedor , forma_pagamento , valor_pedido , obs)
values ("2022-9-16" , "Marcos Cruz" , "11" , "5670-1234" , "Ana Clara" , "CC" , 3450.20 , "Fez em 4 parcelas");


UPDATE vendas SET nome_vendedor = "VALDIR", valor_pedido=7200.00 WHERE numero__pedido=101;

UPDATE vendas SET forma_pagamento="BO" WHERE numero__pedido=102;

UPDATE vendas SET nome_cliente="Marcos Cruz" WHERE numero__pedido=103;

UPDATE vendas SET dat_venda="2022-09-16" WHERE numero__pedido=104;


CREATE TABLE Entregas (
    N_entregas int(6) primary key auto_increment ,
    data_entrega date NOT NULL,
    N_pedido int(6) NOT NULL ,
    Cod_entregador int(6) NOT NULL ,
    End_entrega varchar(100) NOT NULL ,
    Bairro varchar(25) NOT NULL ,
    Cidade varchar(40) NOT NULL ,
    CEP char(9) NOT NULL ,
    UF char(2) NOT NULL, 
    Status_entrega BOOLEAN ,
    Peso float(7,3) NOT NULL
);

insert into Entregas (N_entregas , data_entrega , N_pedido , Cod_entregador , End_entrega , Bairro , Cidade , CEP , UF , Status_entrega , Peso)
values ("2022-9-17" , "72" , "7" , "Av. Sta Cruz, 17" , "Sta Cruz" , "S.Paulo" , "01234-000" , "SP" , 0 , "12.5");

insert into Entregas (N_entregas , data_entrega , N_pedido , Cod_entregador , End_entrega , Bairro , Cidade , CEP , UF , Status_entrega , Peso)
values ("2022-9-18" , "59" , "15" , "Av. Paulista, 1580 - apto. 12" , "13" , "S.Paulo" , "01234-000" , "SP" , 1 , "0.250");

insert into Entregas (N_entregas , data_entrega , N_pedido , Cod_entregador , End_entrega , Bairro , Cidade , CEP , UF , Status_entrega , Peso)
values ("2022-9-18" , "63" , "8" , "Rua Martins Sá, 1590" , "21" , "Santos" , "01234-000" , "SP" , 1 , "1.015");

insert into Entregas (N_entregas , data_entrega , N_pedido , Cod_entregador , End_entrega , Bairro , Cidade , CEP , UF , Status_entrega , Peso)
values ("2022-9-18" , "73" , "15" , "Pça Silva Marta, 10 - apto. 57 " , "14" , "Guarulhos" , "01234-000" , "SP" , 1 , "0.700");

insert into Entregas (N_entregas , data_entrega , N_pedido , Cod_entregador , End_entrega , Bairro , Cidade , CEP , UF , Status_entrega , Peso)
values ("2022-9-19" , "74" , "7" , "Rua Mascote, 205" , "11" , "S.Paulo" , "01234-000" , "SP" , 0 , "1.0");


CREATE TABLE FINANCEIRO (
    Data_prevista date NOT NULL ,
    N_do_pedido int(6) NOT NULL , 
    Data_da_venda date NOT NULL ,
    N_da_parcela char(2) NOT NULL ,
    Valor_da_parcela float(10,8) NOT NULL ,
    Nome_do_Cliente varchar(80) NOT NULL ,
    Nome_do_vendedor varchar(80) NOT NULL 
);

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-9-15" , "102" , "2022-9-15" , null ,  "987.12" , "Fiat Lux S/A" , "Ana Clara");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-9-15" , "104" , "2022-9-15" , null ,  "275.50" , "Mario Andrada" , "Regina");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-10-14" , "101" , "2022-9-14" , "1" ,  "2.625.10" , "Marcos Cruz" , "Ana Clara");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-10-15" , "103" , "2022-9-15" , "1" ,  "7542.97" , "Rita Souza" , "Valdir");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-10-16" , "105" , "2022-9-16" , "1" ,  "862.55" , "Marcos Cruz" , "Ana Clara");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-11-14" , "101" , "2022-9-14" , "2" ,  "2.625.10" , "Marcos Cruz" , "Ana Clara");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-11-16" , "105" , "2022-9-16" , "2" ,  "862.55" , "Marcos Cruz" , "Ana Clara");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2022-12-16" , "105" , "2022-9-16" , "3" ,  "862.55" , "Marcos Cruz" , "Ana Clara");

insert into financeiro (Data_prevista , N_do_pedido , Data_da_venda , N_da_parcela , Valor_da_parcela , Nome_do_Cliente , Nome_do_vendedor)
values ("2023-01-16" , "105" , "2022-9-16" , "4" ,  "862.55" , "Marcos Cruz" , "Ana Clara");


use ecommerce;

UPDATE vendas SET nome_vendedor = "VALDIR", valor_pedido=7200.00 WHERE numero__pedido=101;

UPDATE vendas SET forma_pagamento="BO" WHERE numero__pedido=102;

UPDATE vendas SET nome_cliente="Marcos Cruz" WHERE numero__pedido=103;

UPDATE vendas SET dat_venda="2022-09-16" WHERE numero__pedido=104;

/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

DELETE FROM entregas WHERE N_entregas=158;
DELETE FROM entregas WHERE N_entregas=160;










