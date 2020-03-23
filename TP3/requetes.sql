select enfant
from enfant
where enfant.prenom = 'Conrad';

select count(organisation)
from categorie, organisation, activite
where organisation.id_activite = activite.id_activite;

select organisation.creneauhoraire
from organisation
where organisation.id_enfant = 1
and organisation.id_journee = 1;

