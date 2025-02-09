# UMA LISTA COM TODOS OS GAHANFOTOS FEMÊA
select * from gafanhotos 
where sexo = 'f';

# UMA LISTA COM OS DADOS DE TODOS AQUELES QUE NASCERAM ENTRE 1/Jan/2000 e 31/Dez/2015
select * from gafanhotos
where nascimento between '2000-1-1' and '2015-12-31';

# UMA LISTA COM TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADORES
select * from gafanhotos 
where profissao = 'programador';

# UMA LISTA COM OS DADOS DE TODAS A MULHERES QUE NASCERAM NO BRASIL E TEM SEU NOME INICIADO COM 'J'
select * from gafanhotos 
where sexo = 'f' and nacionalidade = 'brasil' and nome like 'J%';

# UMA LISTA COM O NOME E A NASCIONALIDADE DE TODOS O HOMENS QUE TEM SILVA NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS DE 100KG
select nome, nacionalidade from gafanhotos 
where sexo = 'm' and nome like '%silva%' and nacionalidade <> 'brasil' and peso < 100;

# QUAL A MAIOR ALTURA ENTRE OS GAFANHOTOS HOMENS QUE MORAM NO BRASIL
select max(altura) from gafanhotos
where sexo = 'm' and nacionalidade = 'brasil';

# QUAL A MEDIA DE PESO DOS GAFANHOTOS CADASTRADOS
select avg(peso) from gafanhotos;

# QUAL O MENOR PESO ENTRE OS GAFANHOTOS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/Jan/1990 E 31/Dez/2000
select min(peso) from gafanhotos 
where sexo = 'f' 
and nacionalidade <> 'brasil' 
and nascimento between '1990-01-1' and '2000-12-31'; 

# QUANTAS GAFANHOTOS MULHERES TEM MAIS DE 1.90M DE ALTURA
select count(altura) from gafanhotos
where sexo = 'f' and altura > 1.90;