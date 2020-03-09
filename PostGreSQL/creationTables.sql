-- Creation des tables sous PostGreSQL

drop table Client cascade;
drop table Architecte cascade ;
drop table Artisan cascade ;
drop table Projet cascade ;
drop table Chantier cascade ;

create table Client
(
  idCLient integer NOT NULL,
  nom varchar,
  prenom varchar,
  adresse varchar,

  primary key (idCLient)
);

create table Architecte
(
  idArchi integer NOT NULL,
  nom varchar,
  prenom varchar,
  fonction varchar,
  dateEmbauche date,
  commission float,

  primary key (idArchi)
);

create table Artisan
(
  idArtisan integer NOT NULL,
  nom varchar,
  adresse varchar,
  corpsMetier varchar,

  primary key (idArtisan)
);

create table Projet
(
  idProjet integer NOT NULL,
  intitule varchar,
  montant float,
  etat varchar,
  idArchi integer NOT NULL,
  idCLient integer NOT NULL,

  primary key (idProjet),
  foreign key (idArchi) references Architecte (idArchi),
  foreign key (idCLient) references Client (idCLient)

);

create table Chantier
(
  idChantier integer NOT NULL,
  dateDebut date NOT NULL,
  dateFin date NOT NULL,
  idProjet integer NOT NULL,
  idArtisan integer NOT NULL,

  primary key (idChantier),
  foreign key (idProjet) references Projet (idProjet),
  foreign key (idArtisan) references Artisan (idArtisan)
);