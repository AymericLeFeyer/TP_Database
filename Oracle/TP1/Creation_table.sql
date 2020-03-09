 CREATE TABLE Client
(
  idCLient integer NOT NULL,
  nom varchar(10),
  prenom varchar(10),
  adresse varchar(20),

  PRIMARY KEY (idCLient)
);

CREATE TABLE Architecte
(
  idArchi integer NOT NULL,
  nom varchar(10),
  prenom varchar(10),
  fonction varchar(10),
  dateEmbauche varchar(10),
  commission integer,

  PRIMARY KEY (idArchi)
);

CREATE TABLE Artisan
(
  idArtisan integer NOT NULL,
  nom varchar(10),
  prenom varchar(10),
  corpMetier varchar(10),

  PRIMARY KEY (idArtisan)
);


CREATE TABLE Projet
(
  idProjet integer NOT NULL,
  intitulé varchar(10),
  montant integer,
  etat varchar(10),

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

