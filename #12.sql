#https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r

select * from cursos
where nome like 'a%'; #comeca por 'a'
#'%a' - termina com 'a'
#'%a%' - contem

select * from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p_';#'_' exige que tenha alguma coisa no final

select max(carga) from cursos;
select max(totalaulas) from cursos where ano = '2016';
select min(totalaulas), nome from cursos where ano = '2016';

select sum(totalaulas) from cursos;

select avg(totalaulas) from cursos;

------- Exercicio 01
#Uma lista com o nome de todas as gafanhotas

select nome from gafanhotos where sexo ='F';

------- Exercicio 02
#Uma lista com os dados de todos aqueles que nasceram entre 01/jan/2000 e 31/dez/2015

select * from gafanhotos 
where nascimento between '1980-01-01' and '1991-12-01';
select * from gafanhotos;

------- Exercicio 03
#Uma lista com o nome de todos os homens que trabalham como engeheiros

select nome, prof, sexo from gafanhotos where prof = 'engenheiro'
group by sexo
having sexo = 'M';

select * from gafanhotos;

------- Exercicio 04
#Uma lista com os dados de todas as mulheres que nasceram no Brasil e que tem o seu nome iniciando com a letra 'J'

select * from gafanhotos where nome like 'J%' and nacionalidade = 'Brasil'
group by sexo
having sexo = 'F';

------- Exercicio 05
#Quantas gafanhotas mulheres tem mais de 1.60m de altura?

select altura, count(*) from gafanhotos where sexo = 'F' and altura > '1.60';


desc cursos;


select distinct carga from cursos
order by carga;

select carga from cursos
group by carga;

select carga, count(nome) from cursos
group by carga;

select carga, totalaulas,  count(*) from cursos where totalaulas = 30
group by carga; 

select carga, count(nome) from cursos 
group by carga
having count(nome) > 3;

select ano, count(*) from cursos
group by ano
having count(ano) >= 3
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2013
group by carga
having carga > (select avg(carga) from cursos);

------- Exercicio 01
#Uma lista com as profissoes dos gafanhotos e respetivos quantitativos.

desc gafanhotos;
select * from gafanhotos;
update gafanhotos
set prof = 'medico'
where id between 1 and 8;

select * from gafanhotos;
update gafanhotos
set prof = 'vendedor'
where id = 6;

select prof, count(*) from gafanhotos
group by prof;

------- Exercicio 02
#Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005?

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-00'
group by sexo;

------- Exercicio 03
#Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais
#de 3 gafanhotos com essa nacionalidade.

select * from gafanhotos;
select nacionalidade, count(id) from gafanhotos
where nacionalidade <> 'Brasil'
group by nacionalidade 
having  count(*) > 3;


------- Exercicio 04
#Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 70kg e que estao acima da media de altura de todos os cadastrados.

select * from gafanhotos;
select avg(altura) from gafanhotos;

select altura, peso, count(*) from gafanhotos
where altura > (select avg(altura) from gafanhotos)
group by altura
having peso > 70;