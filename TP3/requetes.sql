select enfant
from enfant
where enfant.prenom = 'Conrad';

select count(organisation)
from categorie, organisation, activite
where organisation.id_activite = activite.id_activite;
