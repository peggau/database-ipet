create database ipet;

use ipet;

create table regiao (
    id integer primary key auto_increment,
    nome varchar(40)
);

create table petshop (
    id integer primary key auto_increment,
    nome varchar(40),
    contato varchar(15),
    endereco varchar(60),
    regiao_id int,
    foreign key (regiao_id) references regiao(id)
);

create table servico (
    id integer primary key auto_increment,
    nome varchar(40),
    valor float
);

create table servico_petshop (
    servico_id int,
    foreign key (servico_id) references servico(id),
    petshop_id int,
    foreign key (petshop_id) references petshop(id)
)
