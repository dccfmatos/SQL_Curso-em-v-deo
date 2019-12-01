#https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r

create table if not exists cursos(
nome varchar (30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2019')
default charset = utf8mb4;

alter table cursos
add primary key (idcurso);

use cadastro;
desc cursos;
desc gafanhotos;

drop cursos;


select*from cursos;

alter table cursos
add prof varchar(10) after nome;

alter table cursos
modify prof varchar(20) not null default '';
