#https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r

use cadastro;

select * from gafanhotos;

select * from cursos;

insert into cursos values
('1','MySQL', 'Guanabara',  '5', '10', default),
('2', 'javacipt', 'Guanabara', '5', '10', default) ;


update cursos 
set nome = 'JavaScript'
where idcurso = 2;

update cursos 
set nome = 'My SQL', ano = '2018'
where idcurso = 1;

update cursos 
set ano = '2020'
where idcurso = 2
limit 1;

update cursos 
set ano = '2020'
where idcurso = 1
limit 1;

update cursos 
set ano = '2022'
where ano = '2020'; 

delete from cursos
where idcurso = '1';


truncate table cursos;