use cadastro;
describe gafanhotos;

alter table gafanhotos 
add column cursopreferido int;

alter table gafanhotos 
add foreign key (cursopreferido)
references cursos (idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos 
set cursopreferido = '5' 
where id = '2';

update gafanhotos 
set cursopreferido = '6'
where id = '1';