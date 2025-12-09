create database ac2bd3tri

use ac2bd3tri

create table Produtos (
id int primary key indentity (1,1),
nome varchar(30) not null, 
marca varchar(30) not null,
preço int not null
)

create table Estoque (
id int primary key identitity
idProduto int not null,
nomeProduto varchar(30) not null,
qtdDisponivel int not null,
qtdTotalEstoque int not null,
constraint fk_Estoque_Produtos foreign key (idProduto)
references Produtos(id)
)

create table Vendas (
id int primary key identity (1,1),
codProdutoVendido int not null,
qtdProdutoVendido int not null,
dataVenda date not null,
constraint fk_Vendas_Estoque foreign key (idEstoque)
references Estoque(id)
)

insert into Estoque
values(getdate(),100,100) 

create trigger tgr_NovoProduto
on Produtos
after insert 
as
begin
	  declare
	  @newProduto
	  @cod 

	  select @newProduto = novoProduto, @cod = código from inserted
	  update Estoque set qtdTotalEstoque = qtdTotalEstoque + @newProduto
	  where codProduto = @cod
end

insert into Estoque
values(getdate(),100,100)

create trigger tgr_VendaProduto
on Vendas
for delet
as
begin
	if update(qtdDisponivel)
    update Estoque set qtdDisponivel = qtdDisponivel - qtdProdutoVendido
	from deleted
    where estoque.id = deletedEstoque
end

