create database relacionamentos

use relacionamentos

create table funcionarios(
id int primary key indentity(1,1),
nome varchar(60), 
telefone char(9)
)

create table dependentes(
id int primary key indentity(1,1),
nome varchar(60) not null, 
grauParent varchar(20) not null,
idFunc int not null,
constraint fk_dependentes_funcionarios foreign key (idFunc)
references funcionarios(id)
)

insert into funcionarios
values ('Lucas','1111-1111')
insert into funcionarios
values ('Camila','2222-2222')
insert into funcionarios
values ('João','3333-3333')

select id,nome,telefone from funcionarios
insert into dependentes
values ('Eduardo','Filho',1)
insert into dependentes
values ('Juliana','Filho',1)
insert into dependentes
values ('Gustavo','Pai',2)
insert into dependentes
values('Ricardo','Filho',35)

/*SELECT QUE UNE DADOS DE DUAS OU MAIS TABELAS
CLÁUSLA INNER JOIN = especifica o nome da tabela e o campo*/
select funcionarios.nome as 'Nome do Funcionário', dependentes.nome as
'Nome do Dependente', dependentes.grauParent as 'Parentesco'
from funcionarios /*tanto faz a tabela que colocar aqui*/
inner join dependentes on funcionarios.id=dependentes.idFunc
where funcionarios.nome like 'Lu%'
order by dependentes.nome desc

/*o inner join faz a visualização, se vc colocou a tabela 1 no from,
coloca-se a tabela 2 no inner join eai acontece quando o conteúdo da
chave estrangeira for igual ao da primária

/*identity vai gerar automaticamente o id pois ele está (1,1), ou seja, vai de um em um
/*constraint nomeparaarelação_nometabeladachaveestrangeira_nometabela2 foreign key (o q q vai relacionar)
/*references nometabela(campo q vai relacionar)
/*fk- foreign key