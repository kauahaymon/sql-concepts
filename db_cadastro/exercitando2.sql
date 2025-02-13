# UMA LISTA COM AS PROFISSÕES DOS GAFANHOTOS E SEUS RESPECTATIVOS QUANTITATIVOS;
select profissao, count(*) from gafanhotos
group by profissao
order by profissao desc;

# QUANTOS GAFANHOTOS HOMENS E QUANTOS GAFANHOTOS MULHERE NASCERAM APÓS 01/JAN/2005;
select sexo, count(sexo) from gafanhotos
where nascimento > '2005-1-1'
group by sexo;

# UMA LISTA COM OS GAFANHOTOS QUE NASCERAM FORA DO BRASIL, MOSTRANDO O PAÍS DE ORIGEM
-- E O TOTAL DE PESSOAS NASCIDAS LÁ. SÓ NOS INTERESSAM OS PAÍSES QUE TIVEREM MAIS DE 3 
-- GAFANHOTOS COM ESSA NACIONALIDADE;
select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'brasil'
group by nacionalidade
having count(*) > 3;

# UMA LISTA AGRUPADA PELA ALTURA DOS GAFANHOTOS, MOSTRANDO QUANTAS PESSOAS PESAM MAIS DE 
-- 100KG E QUE ESTÃO ACIMA DA MÉDIA DE ALTURA DE TODOS OS CADASTRADOS;
select altura, count(*) from gafanhotos
where peso > 100 and (select avg(altura) from gafanhotos)
group by altura;