create table Enfant (
    Id_enfant int,
    Nom varchar(20),
    Prenom varchar(20),
    Classe varchar(20),

    primary key (Id_enfant)
);

create table Categorie (
    Id_categorie int,
    Nom varchar(20),
    TypeActivite varchar(20),
    VolumeHoraireQuotidien int,

    primary key (Id_categorie)
);

create table Activite (
    Id_activite int,
    Nom varchar(20),
    NomReferent varchar(20),
    Id_categorie int,

    primary key (Id_activite),
    foreign key (Id_categorie) references Categorie
);

create table Journee (
    Id_journee int,
    Date_journee date,
    Type_journee varchar(20),

    primary key (Id_journee)
);

create table Organisation (
    Id_activite int,
    Id_journee int,
    Id_enfant int,
    CreneauHoraire varchar(20),

    primary key (Id_journee, Id_activite, Id_enfant, CreneauHoraire),
    foreign key (Id_enfant) references Enfant,
    foreign key (Id_activite) references Activite,
    foreign key (Id_journee) references Journee
);




