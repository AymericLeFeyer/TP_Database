-- Requete A : Montant des differents projets
select Projet.montant
from Projet;

-- Requete B : Nom de l'architecte 3
select Architecte.nom
from Architecte
where Architecte.idArchi = 3;


-- Requete J : Somme des budgets de Dupont
select sum(Chantier.budget)
from Chantier, Projet, Client
where Client.nom = 'Dupont'
and Client.idClient = Projet.idClient
and Chantier.idProjet = Projet.idProjet;

