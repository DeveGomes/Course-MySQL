use school_english;

select * from aluno;

insert into professor(nome, idade, email, formacao, horario_aula, dia_aula)
 values('Luiz Roberto', '34', 'luiz@educa.com', 'R.Internacional', 
 '2025-07-09', 'Terça Feira');
 
 insert into curso(materia, inicio_materia, data_finalizacao, horario_aula, dia_aula)
  values('English','2025-08-16', '2029-08-16', '2025-07-09 11:45:00', 'Terça Feira');
  
  alter table curso
   add column professor_id bigint,
    add constraint fk_professor_id
     foreign key (professor_id)
      references professor(id)
      
      insert into curso(materia, inicio_materia, data_finalizacao, horario_aula, dia_aula, professor_id)
  values('English','2025-08-16', '2029-08-16', '2025-07-09 11:45:00', 'Terça Feira', '1');
  
  select *from curso
  
  select*from professor
  
  select * from aluno