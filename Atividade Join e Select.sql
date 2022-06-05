CREATE TABLE livros (
codigo_livros int PRIMARY KEY ,
titulo varchar(100),
autor varchar(100) 
);

CREATE TABLE amigos (
codigo_amigos int PRIMARY KEY,
nome varchar(100),
idade integer 
);

CREATE TABLE emprestimos (
codigo_emprestimos int PRIMARY KEY ,
codigo_livros integer ,
codigo_amigos integer,
data_emprestimo date ,
);


ALTER TABLE emprestimos 
	ADD CONSTRAINT fk_livros FOREIGN KEY (codigo_livros) REFERENCES livros (codigo_livros);

ALTER TABLE emprestimos 
	ADD CONSTRAINT fk_amigos FOREIGN KEY (codigo_amigos) REFERENCES amigos (codigo_amigos);


insert into livros
(codigo_livros, titulo, autor)
VALUES
(1,'O Carisma de Adolf Hitler','Laurence Rees')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(2,'O duque e eu','Julia Quinn')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(3,'Orgulho e preconceito','Jane Austin')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(4,'A Seleção','Kiera Cass')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(5,'A perseguição','Sidney Sheldon')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(6,'O Cortiço','Aluisio de Azevedo')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(7,'O pequeno principe','Antoine de Saint-Exupery')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(8,'A cinco passos de voce','Rachael Lippincott')

insert into livros
(codigo_livros, titulo, autor)
VALUES
(9,'Coraline','Neil Gaiman)

insert into livros
(codigo_livros, titulo, autor)
VALUES
(10,'Mein Kampf','Adolf Hitler')


select * from livros


insert into amigos 
(codigo_amigos, nome, idade)
VALUES (1,'Dylan','14')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (2,'Mary','27')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (3,'Maya','32')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (4,'Oliver','13')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (5,'Giulia','18')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (6,'Giovanni','19')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (7,'Noah','22')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (8,'Henrique','18')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (9,'Rafael','22')

insert into amigos 
(codigo_amigos, nome, idade)
VALUES (10,'Kaua','21')



select * from amigos

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(1,1,3,'03/04/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(2,6,3,'24/02/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(3,2,2,'02/02/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(4,9,7,'01/03/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(5,8,6,'07/05/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(6,4,9,'08/05/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(7,5,5,'08/05/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(8,10,1,'09/05/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(9,5,2,'09/05/2022')

insert into emprestimos 
(codigo_emprestimos, codigo_livros, codigo_amigos, data_emprestimo)
VALUES 
(10,8,10,'24/05/2022')

select * from emprestimos

select l.codigo_livros, l.titulo, a.codigo_amigos, a.nome,a.idade, e.data_emprestimo
	from emprestimos as e
	inner join amigos as a on a.codigo_amigos = e.codigo_amigos
	inner join livros as l on l.codigo_livros = e.codigo_livros
