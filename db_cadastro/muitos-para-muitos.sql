create table gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos (id),
    foreign key (idcurso) references cursos (idcurso)
) default charset = utf8;

select * from gafanhoto_assiste_curso;

insert into gafanhoto_assiste_curso values 
(default, '2018-02-03', '1', '2');