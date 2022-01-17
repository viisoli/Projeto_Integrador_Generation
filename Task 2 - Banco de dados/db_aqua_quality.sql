create database db_Aqua_quality;
use db_Aqua_quality;

create table tb_postagens(
id bigint auto_increment,
titulo varchar(1000) not null,
texto varchar(1000) not null,
dataPostagem datetime not null,
midia varchar(1000),
usuario_id bigint,
temas_id bigint,
primary key (id),
foreign key (usuario_id) references tb_usuario (id),
foreign key (temas_id) references tb_temas (id)
);

create table tb_usuario(
id bigint auto_increment,
nome varchar(255) not null,
email varchar(255) not null,
senha varchar(255) not null,
foto varchar(1000),
primary key (id)

);

create table tb_temas(
id bigint auto_increment,
categoriaPostagem varchar(255) not null,
descricao varchar(255),
primary key (id)
);