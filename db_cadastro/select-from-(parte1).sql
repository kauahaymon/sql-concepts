# selecionando apenas algumas colunas 
# ordenando por ano decrescente, e nome crescente
select ano, nome, carga from cursos
order by ano desc, nome;

# filtrando por linha(s)
select * from cursos
where ano = '2018'
order by nome;

# filtrando por linha(s) e coluna(s)
select ano, nome, descricao, carga from cursos
where ano <= '2017'
order by ano desc, nome;

# selecionando INTERVALOS (between and)
select nome, ano from cursos
where ano between 2014 and 2019
order by ano;

# selecionando VALORES específicos (in)
select nome, ano from cursos
where ano in (2015, 2019, 2014)
order by nome;

# selecão combinando TESTES lógicos
select nome, carga, totaulas from cursos
where carga > 20 and totaulas < 30;