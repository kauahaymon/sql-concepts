# automaticamente
insert into pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)  
values  
('Marcio', '1984-10-02', 'M', '78.9', '1.78', 'Brasil');

# with constraint default
insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)  
values  
(default, 'Godofredo', '1984-10-02', 'M', '78.9', '1.78', default);

# omitindo a coluna
insert into pessoas 
values  
(default, 'Godofredo jr.', '1984-10-02', 'M', '78.9', '1.78', default);

# com mais dados
insert into pessoas values  
(default, 'Roger', '1983-09-03', 'M', '78.2', '1.84', 'Brasil'),
(default, 'Gabi', '1940-4-2', 'F', '66', '1.50', 'Portugal'),
(default, 'Robson', '2003-9-5', 'M', '103.4', '1.90', 'Irlanda');