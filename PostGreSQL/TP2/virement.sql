    begin transaction;

    update Compte
    set solde = solde - 100
    where numero = 1
    and type = 'epargne';

    update Compte
    set solde = solde + 100
    where numero = 1
    and type = 'courant';





-- Mise a jour commission

create or replace function virement()
returns trigger as $virement$
    declare a double precision;

    begin
    raise notice 'Update compte';

    if exists(select Compte.solde
    from Compte, Client
    where Client.numero = 1
    and Compte.numero = 1
    and Compte.solde > 0
    and type = 'epargne') then
    begin
        commit transaction;
    end;
    else begin
        rollback transaction;
    end;


    return new;


    end;

    $virement$ language plpgsql;

create trigger virement before update on Compte
    for each row
    execute procedure virement();
