drop trigger trigger1 on projet;
drop trigger trigger2 on projet;

-- Affiche un message a la creation d'un projet

create or replace function trigger1()
returns trigger as $trigger1$ declare nom_var integer ;
    begin
    raise notice 'Un nouveau projet est créé';
    return new;


    end;

    $trigger1$ language plpgsql;

create trigger trigger1 after insert on projet
    execute procedure trigger1();



-- Lorsqu'un projet est cree, le montant des travaux est init a 0, Ce montant des travaux sera calcule a partir des budgets dedies
-- a chaque chantier - mis a jour a chaque insertion

create or replace function trigger2()
returns trigger as $trigger2$ declare nom_var integer ;
    begin
    raise notice 'Montant init a 0';
    new.montant := 0;
    return new;


    end;

    $trigger2$ language plpgsql;

create trigger trigger3 before insert on projet
    for each row
    execute procedure trigger3();

create or replace function trigger3()
returns trigger as $trigger3$
    declare a double precision;

    begin
    raise notice 'Update projet montant';

    update projet
    set projet.montant = projet.montant + new.budget
    where new.idprojet = projet.idprojet;


    return new;


    end;

    $trigger3$ language plpgsql;

create trigger trigger3 before insert on chantier
    for each row
    execute procedure trigger3();

