create or replace FUNCTION MessageJournee() returns trigger as $MessageJournee$
    begin
        raise notice 'Journee supprimee';
        return new;

    end;
    $MessageJournee$ language plpgsql;

create trigger MessageJournee after DELETE on Journee for each row execute procedure MessageJournee();





create or replace FUNCTION MessageVolumeHoraire() returns trigger as $MessageVolumeHoraire$
    declare V integer;
    declare P integer;

    begin
        raise notice 'Volume Horaire Jour %', new.id_journee;

        select count(organisation) into P
        from categorie, organisation, activite
        where new.id_activite = activite.id_activite
        and new.id_journee = organisation.id_journee;


        select Categorie.volumehorairequotidien into V
        from Categorie, Organisation, activite
        where new.id_activite = activite.id_activite
        and categorie.id_categorie = activite.id_categorie;

        raise notice '% %', V, P;

        if (V <= P) then raise notice 'Duree maximale';
        end if;

        return new;

    end;
    $MessageVolumeHoraire$ language plpgsql;

create trigger MessageVolumeHoraire after Insert on Organisation for each row execute procedure MessageVolumeHoraire();