create database aulaSelect

use aulaSelect

create table produtos(
idProduto int primary key,
nomeProduto varchar(50) not null,
precoProduto float not null,
dataValidade date
)


insert into produtos (idProduto,nomeProduto,precoProduto,dataValidade)
values (1,'Sabão líquido',8,'2021-10-28')
insert into produtos (idProduto,nomeProduto,precoProduto,dataValidade)
values (2,'Feijão',6.78,'2021-08-10')
insert into produtos (idProduto,nomeProduto,precoProduto,dataValidade)
values (3,'Nescau',10,'2021-10-30')

/*continuação DML:
Comando select
único comando que fica dentro da categoria DQR (Data Query Language) 
segundo alguns autores
*/
/* asterisco:
seleciona tudo, mas não é muito legal, muda para select (apenas o que
você quer) from (nome tabela)*/

select * from

/*ordenando registros */

select idProduto, precoProduto, nomeProduto from produtos
order by nomeProduto /*(vai aparecer em ordem alfabética) */

select idProduto, precoProduto, nomeProduto from produtos
order by nomeProduto desc /*(vai aparecer em ordem inversa) */

/*filtrar resultados, nesse exemplo só os que tem id=1*/
select idProduto, nomeProduto, precoProduto from produtos
where idProduto=1