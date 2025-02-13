# juntando duas tabelas pela chave (pk, fk)
select gafanhotos.nome, cursos.nome, cursos.idcurso 
from gafanhotos inner join cursos 
on cursos.idcurso = gafanhotos.cursopreferido;

# nomeando e abreviando
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on g.id = c.idcurso
order by g.nome;

# preferencia ao lado ESQUERDO da junção
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on g.id = c.idcurso;

# preferencia ao lado DIREITO da junção
select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c
on c.idcurso = g.id;