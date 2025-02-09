# remove uma linha por id
delete from cursos
where idcursos = '10';

# PERIGO !!
delete from cursos
where ano = '2018'
limit 1;

# remove todas as linhas da tabela (PERIGO!!!)
truncate table cursos;

SELECT * FROM cursos;