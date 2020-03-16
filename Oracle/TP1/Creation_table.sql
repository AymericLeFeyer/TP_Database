 CREATE TABLE Client
(
  idCLient integer NOT NULL,
  nom varchar(20),
  prenom varchar(20),
  adresse varchar(40),

  PRIMARY KEY (idCLient)
);

CREATE TABLE Architecte
(
  idArchi integer NOT NULL,
  nom varchar(20),
  prenom varchar(20),
  fonction varchar(20),
  dateEmbauche date,
  commission integer,

  PRIMARY KEY (idArchi)
);

CREATE TABLE Artisan
(
  idArtisan integer NOT NULL,
  nom varchar(20),
  prenom varchar(20),
  corpMetier varchar(20),

  PRIMARY KEY (idArtisan)
);


CREATE TABLE Projet
(
  idProjet integer NOT NULL,
  intitulé varchar(20),
  montant integer,
  etat varchar(20),

  idArchi integer NOT NULL,
  idCLient integer NOT NULL,
    PRIMARY KEY (idProjet),

  CONSTRAINT idClient
    FOREIGN KEY (idCLient)
    REFERENCES Client (idCLient)
        ,
 CONSTRAINT idArchi
    FOREIGN KEY (idArchi)
    REFERENCES ARCHITECTE (idArchi)


);

CREATE TABLE Chantier
(
  idChantier integer NOT NULL,
  dateDebut date,
  dateFin date,
  budget integer,
  idProjet integer NOT NULL,
  idArtisan integer NOT NULL,
    PRIMARY KEY (idChantier),

 CONSTRAINT idProjet
    FOREIGN KEY (idProjet)
    REFERENCES Projet (idProjet)
        ,
 CONSTRAINT idArtisan
    FOREIGN KEY (idArtisan)
    REFERENCES ARTISAN (idArtisan)

);

