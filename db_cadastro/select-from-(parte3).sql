# agrupando registros
select totaulas from cursos
group by totaulas;

# agrupando e agregando 
select carga, count(nome) from cursos where totaulas = 30
group by carga;

select carga, count(nome) from cursos
group by carga
having count(nome) > 4;

select ano, count(nome) from cursos
where totaulas > 20
group by ano
having ano > 2010
order by count(nome) desc;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
