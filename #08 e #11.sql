#https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r

use cadastro;
select * from cursos;


insert into cursos values
('1','HTML5', '...',  '40', '37', '2014'),
('2','Algoritmos', '...',  '20', '15', '2014'),
('3','Photoshop', '...',  '10', '8', '2014'),
('4','PHP', '...',  '40', '20', '2015'),
('5','Java', '...',  '40', '29', '2015'),
('6','MySQL', '...',  '30', '15', '2016'),
('7','Word', '...',  '40', '30', '2016'),
('8','Sapateado', '...',  '40', '30', '2018'),
('9','Cozinha Árabe', '...',  '40', '30', '2018'),
('10','Youtuber', '...',  '5', '2', '2018');

select * from cursos
order by carga desc;

select ano, nome from cursos;

select ano, nome from cursos
order by ano, nome;

select * from cursos
where ano <= '2016'
order by carga;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

select nome, ano from cursos
where ano in (2014, 2016)
order by ano;

select * from cursos
where carga > 35 and totalaulas <=30;

desc cursos;

