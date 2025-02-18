create table if not exists cursos (
	nome varchar(30) not null unique,
	descricao text,
	carga int unsigned,
	totaulas int unsigned,
	ano year default '2025'
) default charset=utf8;

desc cursos;

alter table cursos add column idcursos int first;
alter table cursos add primary key (idcursos);

drop table if exists cursos;