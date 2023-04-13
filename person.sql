create database escola;

use escola;

create table aluno(
id int primary key auto_increment,
nome varchar(200) not null,
nascimento datetime,
email varchar(120)
);

create table curso(
id int primary key auto_increment,
nome_curso varchar(80) not null
);

describe curso;

create table matricula(
cod_curso int,
cod_aluno int,
foreign key (cod_curso) references curso (id),
foreign key (cod_aluno) references aluno (id)
);

insert into aluno (nome, nascimento, email)
value('Jonathan Tsen', '1999-12-01 12:20:10', 'dudutsen@gmail.com'); 

insert into aluno (nome, nascimento, email)
value ('Chris Tsen', '1998-06-09 14:24:13', 'chrisdudutsen@gmail.com'),
('Emily Tsen', '2003-06-09 09:30:11', 'emilygabrielst@gmail.com')

SELECT * FROM escola.aluno;

insert into curso (nome_curso) value ('Medicina'),('Arquitetura'),('Filosofia'),('Informática'),('Jornalismo');

insert into matricula (cod_curso, cod_aluno)
value (4, 1), (4, 2), (4, 3);

select * from aluno
order by nome; 

select * from aluno
order by nascimento; 

alter table aluno rename to person;
alter table familia change nascimento birth datetime;