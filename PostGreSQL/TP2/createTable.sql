drop table Test cascade;
drop table Client cascade;
drop table Compte cascade;

create table Test
(
  n integer,
  primary key (n)
);

create table Client
(
    numero integer,
    nom varchar,
    prenom varchar,
    adresse varchar,
    primary key (numero)
);

create table Compte
(
    numeroCompte integer,
    numero integer,
    intitule varchar,
    type varchar,
    solde double precision,

    primary key (numeroCompte),
    foreign key (numero) references Client

);