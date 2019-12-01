#https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r

use cadastro;

desc gafanhotos;

alter table gafanhotos
add column cursopreferido int;  #adiciona no final, posso usar "first" ou "after" outra coluna


alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

delete from cursos where idcurso ='6';
delete from cursos where idcurso ='7';

select nome, cursopreferido from gafanhotos;


------------------------------ JOIN

select nome, ano from cursos;
select nome, curso preferido from gafanhotos;

select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos join cursos #inner join
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c #mostro todos os gafnhotos, msm os que nao tem curso preferido. Tem preferencia pelos nomes dos alunos.
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano 
from gafanhotos as g right join cursos as c #mostro todos os cursos, msm os que nao sao preferidos. Tem preferencia pelos nomes dos cursos.
on c.idcurso = g.cursopreferido 
order by g.nome;