create table Enfant (
    Id_enfant integer,
    Nom varchar,
    Prenom varchar,
    Classe varchar,

    primary key (Id_enfant)
);

create table Categorie (
    Id_categorie integer,
    Nom varchar,
    TypeActivite varchar,
    VolumeHoraireQuotidien integer,

    primary key (Id_categorie)
);

create table Activite (
    Id_activite integer,
    Nom varchar,
    NomReferent varchar,
    Id_categorie integer,

    primary key (Id_activite),
    foreign key (Id_categorie) references Categorie
);

create table Journee (
    Id_journee integer,
    Date_journee date,
    Type_journee varchar,

    primary key (Id_journee)
);

create table Organisation (
    Id_activite integer,
    Id_journee integer,
    Id_enfant integer,
    CreneauHoraire varchar,

    primary key (Id_journee, Id_activite, Id_enfant, CreneauHoraire),
    foreign key (Id_enfant) references Enfant,
    foreign key (Id_activite) references Activite,
    foreign key (Id_journee) references Journee
);

