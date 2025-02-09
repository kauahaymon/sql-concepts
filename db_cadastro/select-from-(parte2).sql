# usando o LIKE
# seleciona nomes que começam com 'C' -> '%': wildcard
select * from cursos
where descricao like 'a%';

# seleciona nomes que não tem 'a'
select * from cursos
where nome not like '%A%';

# seleciona nomes exigindo UM CARACTER no final
select * from cursos
where nome like 'ph%p_';

# DISTINÇÃO
# seleciona nacionalidades distintas - sem repetição (não comum)
select distinct nacionalidade from gafanhotos
order by nacionalidade;

# AGREGAÇÃO
# seleciona a contagem das ocorrências
select count(*) from cursos 
where carga = 40;

select max(carga) from cursos;
select min(carga) from cursos;
select sum(totaulas) from cursos;
select avg(totaulas) from cursos;