use school_english;

select * from aluno;

insert into professor(nome, idade, email, formacao, horario_aula, dia_aula)
 values('Joao Batista', '43', 'joaoz@educa.com', 'Marketing', 
 '2025-07-10', 'Quarta - Feira');
 
 insert into curso(materia, inicio_materia, data_finalizacao, horario_aula, dia_aula)
  values('English','2025-08-16', '2029-08-16', '2025-07-09 11:45:00', 'Terça Feira');
  
  alter table curso
   add column professor_id bigint,
    add constraint fk_professor_id
     foreign key (professor_id)
      references professor(id)
      
      alter table aluno
       add column curso_id bigint,
        add constraint fk_curso_id
         foreign key(curso_id)
          references curso(id);
      
      insert into curso(materia, inicio_materia, data_finalizacao, horario_aula, dia_aula, professor_id)
  values('Espanhol','2025-08-16', '2029-08-16', '2025-07-08 10:40:00', 'Quarta-Feira', '2');
  
  select *from curso
  
  select*from professor 
  
  select * from aluno
  
  create table grade_aluno(
   aluno_id bigint,
   curso_id bigint,
   primary key(aluno_id, curso_id),
   foreign key (aluno_id)
    references aluno(id),
   foreign key (curso_id)
    references curso(id)
  )engine=InnoDB;
  
select * from grade_aluno

insert into grade_aluno (aluno_id, curso_id)
   values(1,1);
   
select * from aluno
select * from professor
select * from curso

delete from curso 
 where id = 2

insert into aluno ( nome, idade, email, nacionalidade, data_matricula)
  values ('Maria Eduarda','18', 'duda@gmail.com', 'Americana', '2025-09-12')
  
  /*Liste os nomes dos alunos que fizeram matrícula em Janeiro de 2014.
Liste os nomes dos cursos de um determinado professor.
Liste os nomes dos alunos de um determinado curso.*/

 select *from aluno
  where data_matricula <= 2023-01-01
  
  select c.materia, p.nome, c.dia_aula, c.horario_aula
   from professor p, curso c
   where c.id = p.id
   
   select * from aluno a, curso c
    where c.id = a.id
    
    select a.nome, a.email, a.nacionalidade, c.materia, p.nome
    from aluno a, curso c, professor p
     where a.curso_id = c.id
      and c.professor_id = p.id
      and c.materia = 'espanhol'
    
    insert into aluno (curso_id)
     values ('1')
     
     update aluno
     set curso_id = 3
     where id = 1
     
     update aluno
     set curso_id = 4
     where id = 2
     
     select * from curso
     select * from aluno
     select * from professor
     
	
     
  
  
  
 