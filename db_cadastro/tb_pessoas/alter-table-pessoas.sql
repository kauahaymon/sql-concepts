select * from pessoas;
desc pessoas;

# Alterar o nome da TABELA
alter table gafanhotos
rename to pessoas;

# Mudar o nome COLUNA
alter table pessoas
change column profissao prof varchar(10) not null default '';

# Adicionar uma nova COLUNA (final)
alter table pessoas
add column profissao varchar(10);

# Adicionar uma nova COLUNA (depois de outra)
alter table pessoas
add column profissao varchar(10) after nome;

# Apagar uma COLUNA
alter table pessoas
drop column profissao;

# Modificar o TIPO e CONSTRAINT de uma COLUNA
alter table pessoas
modify column profissao varchar(15) not null default '';