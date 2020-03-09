create or replace function nomTrigger()
returns trigger as $nomTrigger$ declare nom_var integer ;
    begin
    raise notice 'Coucou';
    return new;


    end;

    $nomTrigger$ language plpgsql;

create trigger nomTrigger after insert on client
    execute procedure nomTrigger();

drop trigger nomTrigger on client;

-- Faire un trigger qui, quand on ajoute un projet, ajoute le montant du projet au montant total du chantier (ou l'inverse je sais plus en fait, au secours conrad)