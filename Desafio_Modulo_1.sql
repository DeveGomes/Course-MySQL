select current_user();

create database school_english;

use school_english;

create table aluno(
  nome varchar(60),
  idade integer,
  email varchar(60),
  nacionalidade varchar(20),
  data_matricula date
)engine=InnoDB;

create table curso(
 materia varchar(20),
 inicio_materia date,
 data_finalizacao date,
 horario_aula datetime,
 dia_aula varchar(15)
 )engine=InnoDB;
 
 create table professor(
  nome varchar(60),
  idade integer,
  email varchar(60),
  formacao varchar(20),
  horario_aula date,
  dia_aula varchar(20)
)engine=InnoDB;

grant select, insert on school_english.* to 'root'@'localhost';
show grants;

insert into aluno(nome,idade,email,nacionalidade ,data_matricula)
 values('André Gomes', '19', 'andrrefon@gmail.com','Brasileiro', '2025-10-16');
 
 select * from aluno;


 
 
 